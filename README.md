# Zentro Projects Website

Official website for **Zentro Projects (Pty) Ltd.** — a pioneering overhead crane servicing, manufacturing, and lifting equipment company based in Springs, Gauteng, South Africa.

🌐 **Live Site**: [www.zentro.co.za](https://www.zentro.co.za)

---

## About

Zentro Projects provides full-spectrum crane solutions including manufacturing, installation, repair, and refurbishment of overhead cranes and lifting equipment. This website serves as the company's primary digital presence, showcasing their services, products, and portfolio.

## Tech Stack

| Layer | Technology |
|---|---|
| **Markup** | HTML5 (semantic, SEO-optimized) |
| **Styling** | CSS3, Bootstrap 5, Font Awesome 6 |
| **JavaScript** | jQuery 3.6, Slick Slider, Isotope, Counter Up, Magnific Popup |
| **Fonts** | Google Fonts (Exo, Public Sans) |
| **Server** | Nginx (Alpine Linux via Docker) |
| **Deployment** | Coolify (Dockerfile build pack) |
| **Version Control** | Git / GitHub |

## Pages

| Page | File | Description |
|---|---|---|
| Home | `index.html` | Hero slider, services overview, portfolio highlights |
| Single Girder Cranes | `single-girder-cranes.html` | Product details |
| Double Girder Cranes | `double-girder-cranes.html` | Product details |
| Electric Wire Rope Hoist | `electric-wire-rope-hoist.html` | Product details |
| Chain Slings | `chain-slings.html` | Product details |
| Flat Webbing Slings | `flat-webbing-slings.html` | Product details |
| A-Frame Gantry Kits | `a-frame-gantry-kits.html` | Product details |
| Gantry Structures | `gantry-structures.html` | Product details |
| Breakdowns & Repairs | `breakdowns-and-repairs.html` | Service details |
| Crane Upgrades | `crane-upgrades.html` | Service details |
| Load Testing | `load-testing.html` | Service details |
| Electrical Installations | `electrical-installations.html` | Service details |
| About | `about-zentro-projects.html` | Company info |
| Portfolio | `our-business-portfolio.html` | Project gallery |
| News & Blog | `news-and-blog.html` | Articles |
| Blog Details | `blog-details.html` | Article template |
| Contact Us | `contact-us.html` | Contact form & map |
| Privacy Policy | `privacy-policy.html` | Legal |
| Terms of Use | `terms-of-use.html` | Legal |
| Error | `error.html` | 404 page |

## Project Structure

```
zentro/
├── assets/
│   ├── css/           # Stylesheets (Bootstrap, FontAwesome, custom)
│   ├── fonts/         # Web fonts
│   ├── img/           # Images, icons, favicons
│   └── js/            # JavaScript (jQuery, plugins, main.js)
├── *.html             # All website pages
├── mail.php           # Contact form handler (PHP)
├── Dockerfile         # Multi-stage production build
├── nginx.conf         # Nginx server configuration
├── ssmtp.conf.example # SMTP config template
├── .gitignore         # Git exclusions
├── .dockerignore      # Docker build exclusions
├── LICENSE            # Proprietary license
└── README.md          # This file
```

## Local Development

Simply open any `.html` file in a browser — no build step required.

For a local server with live reload, you can use any static server:

```bash
# Using Python
python -m http.server 8080

# Using Node.js (npx)
npx serve .

# Using PHP
php -S localhost:8080
```

## Docker

### Build

```bash
docker build -t zentro-projects .
```

### Run

```bash
docker run -d -p 8080:80 --name zentro zentro-projects
```

Visit `http://localhost:8080` in your browser.

### What the Docker build does

1. **Minifies CSS** — Reduces `style.css` (~625KB) using `clean-css`
2. **Minifies JS** — Compresses `main.js` using `uglify-js`
3. **Minifies HTML** — Strips comments and whitespace from all pages
4. **Serves via Nginx + PHP-FPM** — Gzip, caching headers, security headers, PHP email support

## Email / SMTP Configuration

The contact form (`mail.php`) uses PHP's `mail()` function. In Docker, emails are sent via **ssmtp** — a lightweight SMTP relay.

### Setup Steps

1. Copy the example config:
   ```bash
   cp ssmtp.conf.example ssmtp.conf
   ```

2. Edit `ssmtp.conf` with your SMTP provider's credentials:
   ```
   mailhub=smtp.yourprovider.com:587
   UseTLS=YES
   UseSTARTTLS=YES
   AuthUser=your-email@zentro.co.za
   AuthPass=your-smtp-password
   rewriteDomain=zentro.co.za
   hostname=zentro.co.za
   FromLineOverride=YES
   ```

3. Mount the config when running the container:
   ```bash
   docker run -d -p 8080:80 \
     -v $(pwd)/ssmtp.conf:/etc/ssmtp/ssmtp.conf:ro \
     --name zentro zentro-projects
   ```

### Common SMTP Providers

| Provider | Mail Hub | Port |
|---|---|---|
| Gmail | `smtp.gmail.com` | `587` |
| SendGrid | `smtp.sendgrid.net` | `587` |
| Outlook/365 | `smtp.office365.com` | `587` |
| Custom (hosting) | Check with your provider | Usually `587` or `465` |

> **Note:** For Gmail, you'll need an [App Password](https://support.google.com/accounts/answer/185833). For SendGrid, use your API key as the password.

## Deployment (Coolify)

This project deploys via **Coolify** using the **Dockerfile** build pack:

1. Push to `main` → Coolify detects change → builds image → deploys
2. Push to `staging` → Deploys to staging environment for testing

### Coolify Settings
- **Build Pack**: Dockerfile
- **Static Site**: ✅ Enabled
- **Port**: 80

## Branching Strategy

| Branch | Purpose |
|---|---|
| `development` | Active development work |
| `staging` | Online testing before production |
| `main` | Production — triggers Coolify auto-deploy |

### Workflow
```
development → staging → main
     ↑            ↑        ↑
   (work)      (test)   (deploy)
```

## Performance

- **Gzip compression** on all text assets
- **1-year cache headers** on static assets (CSS, JS, images, fonts)
- **Minified** HTML, CSS, and JavaScript in production
- **Security headers** (X-Frame-Options, X-Content-Type-Options, Referrer-Policy)

## Credits

- **Client**: Zentro Projects (Pty) Ltd.
- **Design & Development**: [MTJ Digital](https://www.mtj-digital.co.za)

## License

This project is proprietary software. See [LICENSE](LICENSE) for details.
All rights reserved © 2026 Zentro Projects (Pty) Ltd.
