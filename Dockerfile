# ============================================
# Zentro Projects - Production Dockerfile
# Serves static site + PHP mail via Nginx + PHP-FPM
# ============================================

# Stage 1: Build & optimize assets
FROM node:20-alpine AS builder
WORKDIR /app

# Copy source files
COPY . .

# Install minification tools and optimize
RUN npm init -y > /dev/null 2>&1 && \
  npm install --save-dev clean-css-cli uglify-js html-minifier-terser > /dev/null 2>&1

# Minify CSS
RUN ./node_modules/.bin/cleancss -o assets/css/style.min.css assets/css/style.css && \
  mv assets/css/style.min.css assets/css/style.css

# Minify main.js (other JS files are already minified)
RUN ./node_modules/.bin/uglifyjs assets/js/main.js -o assets/js/main.min.js -c -m && \
  mv assets/js/main.min.js assets/js/main.js

# Minify all HTML files
RUN for f in *.html; do \
  ./node_modules/.bin/html-minifier-terser \
  --collapse-whitespace \
  --remove-comments \
  --remove-redundant-attributes \
  --minify-css true \
  --minify-js true \
  -o "$f.tmp" "$f" && \
  mv "$f.tmp" "$f"; \
  done

# Clean up dev artifacts
RUN rm -rf node_modules package.json package-lock.json assets/sass assets/css/style.css.map

# Stage 2: Serve with Nginx + PHP-FPM
FROM nginx:alpine

# Install PHP-FPM and mail support
RUN apk add --no-cache \
  php83 \
  php83-fpm \
  php83-ctype \
  php83-json \
  ssmtp

# Configure PHP-FPM to listen on socket
RUN sed -i 's|listen = 127.0.0.1:9000|listen = /run/php-fpm.sock|' /etc/php83/php-fpm.d/www.conf && \
  sed -i 's|;listen.owner = nobody|listen.owner = nginx|' /etc/php83/php-fpm.d/www.conf && \
  sed -i 's|;listen.group = nobody|listen.group = nginx|' /etc/php83/php-fpm.d/www.conf && \
  sed -i 's|user = nobody|user = nginx|' /etc/php83/php-fpm.d/www.conf && \
  sed -i 's|group = nobody|group = nginx|' /etc/php83/php-fpm.d/www.conf && \
  mkdir -p /run/php

# Copy optimized site
COPY --from=builder /app /usr/share/nginx/html

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Remove default Nginx page
RUN rm -f /usr/share/nginx/html/50x.html

# Create startup script
RUN printf '#!/bin/sh\nphp-fpm83\nnginx -g "daemon off;"\n' > /start.sh && chmod +x /start.sh

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost/ || exit 1

CMD ["/start.sh"]
