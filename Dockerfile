# ============================================
# Zentro Projects - Production Dockerfile
# Serves static site via optimized Nginx
# ============================================

# Stage 1: Build & optimize assets
FROM node:20-alpine AS builder
WORKDIR /app

# Copy source files
COPY . .

# Install minification tools and optimize
RUN npm init -y > /dev/null 2>&1 && \
    npm install --save-dev clean-css-cli uglify-js html-minifier-cli > /dev/null 2>&1

# Minify CSS
RUN npx cleancss -o assets/css/style.min.css assets/css/style.css && \
    mv assets/css/style.min.css assets/css/style.css

# Minify main.js (other JS files are already minified)
RUN npx uglifyjs assets/js/main.js -o assets/js/main.min.js -c -m && \
    mv assets/js/main.min.js assets/js/main.js

# Minify all HTML files
RUN for f in *.html; do \
      npx html-minifier \
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

# Stage 2: Serve with Nginx
FROM nginx:alpine

# Copy optimized site
COPY --from=builder /app /usr/share/nginx/html

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Remove default Nginx page
RUN rm -f /usr/share/nginx/html/50x.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost/ || exit 1
