ZENTRO PROJECTS — COMPLETE WEBSITE PRD
Version 2.0 | Cinema Noir "Lifecycle Journey" Edition
PART 1: PROJECT OVERVIEW
1.1 Company Profile
Zentro Projects is a South African crane and lifting solutions company. They are NOT solely a crane manufacturer. Their core value proposition is the full lifecycle of overhead crane systems — from engineering and manufacturing through to ongoing maintenance, repairs, inspections, electrical work, and 24/7 emergency support.

Core Services:

Single Girder Overhead Cranes (engineering, supply, installation)
Double Girder Overhead Cranes (engineering, supply, installation)
Electrical Chain Hoists (supply, installation, repairs)
Wire Rope Hoist Systems (installations, repairs)
Crane Repairs and Refurbishment
Electrical Installations and Upgrades
Load Testing
LTI Inspections and Surveys
Preventative Maintenance Programs
24/7 Emergency Call-outs
1.2 Project Goal
Redesign and rebuild the Zentro Projects website from the ground up using a modern tech stack. The new site must position Zentro as a premium, technologically advanced crane services provider. The homepage will feature an immersive 3D WebGL scroll experience — the "Lifecycle Journey" — where a single crane model is used to narratively showcase every service Zentro provides as the user scrolls.

1.3 Design Philosophy — "Cinema Noir"
The overarching aesthetic is "Heavy Metal Noir" — think Blade Runner meets heavy industry. Dark, cinematic, atmospheric. The design communicates power, precision, and reliability through:

Deep black and charcoal backgrounds
Dramatic volumetric lighting (warm ambers, cool blues)
High-contrast typography
Controlled use of "Safety Orange" as the primary accent
Cinematic camera movements in the 3D environment
Sparks, particles, and industrial atmosphere
1.4 Tech Stack
Technology	Version	Purpose
Next.js	15.9	Framework (App Router, RSC, SSR/SSG)
React	19	UI library
Tailwind CSS	v4	Styling
shadcn/ui	Latest	Component library
Radix UI	Latest	Accessible primitives (underlying shadcn)
Three.js	Latest	3D rendering engine
React Three Fiber	Latest	React renderer for Three.js
React Three Drei	Latest	Three.js helpers and abstractions
GSAP	Latest + ScrollTrigger	Scroll-based animations
Framer Motion	Latest	Page transitions and UI micro-animations
TypeScript	5.x	Type safety
WebGL 2.0	Native	3D graphics API
1.5 Pages to Build
Homepage (with full 3D Lifecycle Journey)
About Us
Contact Us
Single Girder Overhead Crane (Service Page)
Double Girder Overhead Crane (Service Page)
Electrical Chain Hoist (Service Page)
Blog and News
PART 2: BRAND DESIGN SYSTEM
2.1 Color Palette
Primary Colors:

Obsidian Black: #0A0A0A (primary background)
Steel Dark: #141414 (card backgrounds, secondary surfaces)
Gunmetal: #1C1C1E (elevated surfaces, nav background)
Accent Colors:

Safety Orange: #FF6B00 (primary CTA, highlights, sparks)
Molten Amber: #FF8C00 (hover states, warm light accents)
Arc Blue: #00A3FF (secondary accent, electrical/tech elements)
Weld White: #F5F5F5 (primary text on dark)
Neutral Colors:

Concrete Gray: #888888 (secondary text, labels)
Iron Gray: #333333 (borders, dividers)
Fog: #C0C0C0 (tertiary text, metadata)
2.2 Typography
Primary Font: Inter (headings and body) or Geist Sans Monospace Font: JetBrains Mono or Geist Mono (data readouts, technical specs) Display Font (optional): Bebas Neue or Oswald for oversized hero text

Scale:

Hero Display: 80-120px (clamp responsive)
H1: 48-64px
H2: 36-48px
H3: 24-32px
Body Large: 18-20px
Body: 16px
Small/Caption: 14px
Micro/Label: 12px
2.3 Spacing System
Use Tailwind v4 default spacing scale. Base unit: 4px. Key breakpoints for section padding:

Mobile: px-4 py-16
Tablet: px-8 py-24
Desktop: px-16 py-32
Wide: max-w-7xl mx-auto
2.4 Component Design Principles
All cards use subtle border (border-iron-gray/20) with no harsh outlines
Glassmorphism used sparingly — only for HUD overlays in 3D sections
Buttons: Rounded-lg, not fully rounded. Primary = Safety Orange fill. Secondary = ghost/outline
Hover states: Subtle glow effect using box-shadow with accent color at low opacity
All interactive elements must have visible focus states for accessibility
Micro-animations on all interactions (scale, opacity, translate) — kept under 300ms
2.5 Iconography
Use Lucide icons (bundled with shadcn/ui). For service-specific icons, use custom SVGs in the brand style — monoline, 2px stroke, Safety Orange accent on key paths.

PART 3: GLOBAL COMPONENTS
3.1 Navigation Bar
Behavior:

Fixed to top of viewport
Transparent on hero, transitions to solid Gunmetal (#1C1C1E) with backdrop-blur on scroll
Height: 72px desktop, 64px mobile
Z-index: 50
Desktop Layout:

Left: Zentro logo (SVG, white version on dark)
Center: Nav links — Home, About, Services (dropdown), Blog, Contact
Right: Emergency CTA button — "24/7 Emergency: 0XX XXX XXXX" in Safety Orange with phone icon and pulse animation
Services Dropdown:

Trigger: Hover on desktop, tap on mobile
Content: Mega-menu style panel with three columns
Column 1: Crane Systems (Single Girder, Double Girder, Chain Hoists)
Column 2: Services (Repairs, Electrical, Load Testing, Inspections)
Column 3: Featured image or 3D mini-render of a crane
Background: Steel Dark with subtle grain texture
Animation: Fade-in + slide-down, 200ms ease-out
Mobile Layout:

Hamburger menu icon (right side)
Full-screen overlay menu on open
Background: Obsidian Black at 98% opacity with backdrop-blur
Links stacked vertically, large touch targets (48px min)
Emergency number always visible at bottom of mobile menu
3.2 Footer
Layout: Four columns on desktop, stacked on mobile

Column 1: Logo, company tagline, short description (2 sentences max)
Column 2: Quick Links — Home, About, Services, Blog, Contact
Column 3: Services — Single Girder, Double Girder, Chain Hoists, Repairs, Electrical, Inspections
Column 4: Contact Info — Phone, Email, Physical Address, Operating Hours
Bottom Bar:

Copyright notice
Privacy Policy link
Terms and Conditions link
Social media icons (LinkedIn, Facebook — if applicable)
Design:

Background: #0A0A0A with subtle top border in Iron Gray
Subtle grain/noise texture overlay at 3% opacity
All links have hover state transitioning to Safety Orange
3.3 Emergency Banner (Optional — Sticky)
A thin banner (40px) above or below the navbar:

Text: "🔧 24/7 Emergency Crane Repairs — Call Now"
Background: Safety Orange
Text: Black, bold
Dismissible with X button
Stores dismissed state in localStorage for session
PART 4: HOMEPAGE — THE LIFECYCLE JOURNEY
4.0 Homepage Overview
The homepage is the hero of this entire project. It tells the story of a crane's full lifecycle through an immersive scroll experience. ONE 3D crane model is the constant throughout. As the user scrolls, the camera moves around the crane, zooms into different components, and each section highlights a different service Zentro provides.

The page is approximately 6-7 viewport heights long. Scroll progress (0% to 100%) drives everything — camera position, lighting, particle effects, text reveals, and section transitions.

Critical UX Note: The 3D canvas is the background layer. Content (text, cards, CTAs) floats above it in the foreground. The 3D responds to scroll but never blocks interaction with content. On mobile or low-performance devices, the 3D degrades gracefully to a video loop or static images with parallax.

4.1 Section 1 — THE AWAKENING (Hero) | Scroll 0-15%
3D Scene:

Environment: A dark industrial bay. The crane is centered on its gantry/runway. Everything is dark — near black.
Scroll 0%: A single overhead light flickers on. Then another. Then a row of lights illuminates sequentially down the bay, revealing the crane in dramatic fashion.
The crane begins to move slowly along the runway as scroll progresses.
Particle effects: Dust motes floating in the light beams. Subtle heat haze.
Camera: Wide establishing shot, slightly low angle looking up at the crane to emphasize scale.
Foreground Content:

Company name: "ZENTRO PROJECTS" — massive display font, revealed with a cinematic wipe or letter-by-letter animation timed to the lights turning on
Tagline: "Engineering Uptime." or "Keeping Industry Moving." — fades in below
Subtle scroll indicator: A thin animated line or chevron at the bottom saying "Scroll to explore"
No buttons in this section — pure atmosphere and hook
Lighting:

Warm amber overhead practicals
Cool blue ambient fill from below/sides
Volumetric light cones (god rays) from the overhead lights
4.2 Section 2 — THE BIRTH (Engineering and Manufacturing) | Scroll 15-30%
3D Scene:

The crane continues moving along the gantry.
Camera slowly dollies in from the wide shot toward the crane structure.
Sparks begin flying from welding points on the girders (particle system — orange/white sparks with gravity and bounce).
Blueprint/wireframe overlay fades in on parts of the crane — showing the engineering underneath.
Labels float next to key components: "Box Girder — Grade 350W Steel", "End Truck Assembly", "Runway Rail Interface"
Foreground Content:

Section heading: "BUILT FOR BRUTALITY"
Subheading: "Engineered from blueprint to beam. Every crane we build is designed for your specific load, span, and duty cycle."
Two or three key stats in large typography:
"Up to 50-ton capacity"
"Custom spans up to 30m"
"Grade 350W structural steel"
Small CTA link: "Explore our crane systems →" (links to services)
Lighting Shift:

Warmer tones now — welding orange and amber dominate
Spark particles cast dynamic point lights on surrounding geometry
4.3 Section 3 — WEAR AND HEAL (Repairs and Refurbishment) | Scroll 30-45%
3D Scene:

Camera zooms into the hoist mechanism — gears, wire rope drum, sheaves.
The components show signs of wear — a subtle crack appears on a gear tooth, the wire rope shows fraying (this can be a texture swap or shader effect).
Then the repair happens: the cracked gear glows orange (like being heated), reshapes, and becomes new. The wire rope rewinds fresh. Visual metaphor for refurbishment.
Camera slowly orbits the hoist mechanism during this sequence.
Foreground Content:

Section heading: "REPAIR. REFURBISH. RESTORE."
Body text: "From wire rope replacements to complete hoist overhauls, we extend the life of your equipment and get you back to full capacity — fast."
Service list (styled as minimal cards or a clean list):
Wire Rope Hoist Repairs
Gearbox Overhauls
Brake System Replacement
Complete Crane Refurbishment
Structural Repairs and Modifications
Stat: "Average repair turnaround: 48 hours"
CTA: "Request a Repair Assessment →"
Lighting Shift:

Cooler tones — diagnostic blue-white inspection lighting
The repair glow is warm orange, creating contrast
4.4 Section 4 — THE NERVOUS SYSTEM (Electrical Installations) | Scroll 45-60%
3D Scene:

Camera pans from the hoist to the crane's electrical control panel/pendant station.
The panel "opens" (animated) revealing internal wiring and components.
Tron-style energy lines trace through the wiring, lighting up circuits, contactors, and VFDs.
Data readouts appear as floating HUD elements: voltage, amperage, frequency.
The crane's motion is now smoother — representing a VFD-controlled drive upgrade.
Foreground Content:

Section heading: "THE NERVOUS SYSTEM"
Subheading: "Complete electrical solutions — from pendant controls to full PLC automation upgrades."
Service list:
Electrical Installations (new cranes)
Control System Upgrades
VFD/Inverter Drive Installations
Pendant and Radio Remote Control Systems
Electrical Fault Finding and Repairs
Compliance Rewiring
Optional: A small animated diagram showing old relay logic being replaced by modern PLC — simplified, icon-based.
CTA: "Get an Electrical Assessment →"
Lighting Shift:

Arc Blue (#00A3FF) dominates — circuit board aesthetic
Traces of energy pulse along wires in cyan/blue
Background darkens to near-black to make the electrical elements pop
4.5 Section 5 — THE PROOF (Load Testing, Inspections, Surveys) | Scroll 60-75%
3D Scene:

Camera pulls back to a medium shot of the full crane.
A heavy test load appears, suspended from the hook (animated lowering).
Stress visualization: Heatmap-style overlay on the crane structure showing load distribution — green (safe) to yellow to red at stress concentration points.
HUD overlay showing real-time test data: Load (tons), Deflection (mm), Safety Factor (x1.5).
The crane passes the test — all indicators go green, a subtle "APPROVED" stamp or checkmark appears.
Foreground Content:

Section heading: "TESTED. CERTIFIED. TRUSTED."
Subheading: "Regulatory compliance is not optional. We provide thorough inspections and load testing to keep your operation legal and safe."
Service list:
Statutory Load Testing (as per OHS Act)
LTI Inspections (Lifting Tackle Inspections)
Pre-use Crane Surveys
Non-Destructive Testing (NDT)
Condition Assessment Reports
Compliance Certification
Trust badge area: Display any certifications, accreditations, or memberships
CTA: "Schedule an Inspection →"
Lighting Shift:

Clinical, bright white inspection lighting from above
Heatmap colors on the crane structure (green, yellow, orange, red)
Clean, precise — conveys authority and compliance
4.6 Section 6 — THE GUARDIAN (24/7 Support and Maintenance) | Scroll 75-88%
3D Scene:

The 3D crane scene begins to fade or desaturate slightly — the focus shifts from the machine to the human element.
Option A: The 3D transitions to a stylized scene of an engineer figure standing beside the crane (low-poly or silhouette style).
Option B: The 3D fades to a subtle background and a high-quality photograph or video of a real Zentro engineer in high-vis gear takes focus in the foreground.
A "heartbeat" pulse animation radiates from the crane — visualizing constant monitoring.
Small floating icons: Clock (24/7), Wrench (maintenance), Shield (protection).
Foreground Content:

Section heading: "ALWAYS ON. ALWAYS READY."
Subheading: "When your crane goes down, your production stops. Our 24/7 emergency response team gets you moving again."
Key promises (large, bold):
"24/7 Emergency Call-outs"
"Preventative Maintenance Programs"
"Dedicated Service Technicians"
"Rapid Response Across Gauteng" (or relevant service area)
Testimonial (if available): A quote from a satisfied client about response time.
Emergency phone number displayed prominently — large, Safety Orange, tap-to-call on mobile.
CTA: "Set Up a Maintenance Plan →"
Lighting Shift:

Warmer, more human tones — amber/gold
Softer overall — less dramatic than previous sections
The pulse effect uses Safety Orange
4.7 Section 7 — THE INVITATION (CTA and Configurator Teaser) | Scroll 88-100%
3D Scene:

The crane returns to full visibility — clean, restored, well-lit.
It sits on a turntable or slowly rotates on a spotlight — like a product showcase.
Background is clean, dark, minimal — all attention on the crane and the CTA.
Subtle particle effect: Floating embers or very fine sparks — just enough to keep the atmosphere alive.
Foreground Content:

Heading: "READY TO TALK?" or "LET'S BUILD YOUR SOLUTION"
Subheading: "Whether you need a new crane system, an urgent repair, or a maintenance partner — we are here."
Two CTA buttons side by side:
Primary (Safety Orange fill): "Get a Free Quote"
Secondary (Ghost/outline): "Call Us Now: 0XX XXX XXXX"
Below: A row of service category icons with labels as a final reminder of scope:
New Cranes | Repairs | Electrical | Testing | Maintenance | Emergency
Optional: If a 3D configurator is a future plan, tease it here: "Coming Soon: Build your crane in 3D" with a subtle locked/preview state.
4.8 Homepage — 3D Technical Specifications
Canvas Setup:

React Three Fiber canvas as a fixed-position background layer (position: fixed, inset: 0, z-index: 0)
Content sections scroll over the canvas (position: relative, z-index: 10)
GSAP ScrollTrigger pinning the canvas and driving animation progress based on scroll position
Crane Model Requirements:

Format: glTF/GLB (compressed with Draco)
Polygon budget: 50,000-100,000 triangles maximum
Must have separate named meshes for: main girder(s), end trucks, hoist/trolley, hook block, wire rope, control panel, wheels/bogies
PBR textures: Albedo, Normal, Metalness, Roughness, AO — max 2048x2048 per texture, compressed to KTX2
File size target: Under 5MB total (model + textures)
Camera Path: Define camera positions as an array of keyframes mapped to scroll progress:

text

Scroll 0%:   position [0, 5, 25]    lookAt [0, 3, 0]    (wide establishing)
Scroll 15%:  position [0, 4, 18]    lookAt [0, 4, 0]    (medium shot)
Scroll 30%:  position [3, 3, 5]     lookAt [1, 3, 0]    (close-up hoist)
Scroll 45%:  position [-3, 3, 4]    lookAt [-1, 3.5, 0] (pan to electrics)
Scroll 60%:  position [0, 6, 15]    lookAt [0, 2, 0]    (pull back, load test)
Scroll 75%:  position [0, 4, 12]    lookAt [0, 3, 0]    (medium, fade out)
Scroll 90%:  position [0, 3, 10]    lookAt [0, 3, 0]    (turntable showcase)
Scroll 100%: position [0, 3, 10]    lookAt [0, 3, 0]    (hold)
Interpolation: Use GSAP or custom lerp with easing between keyframes. Smooth, cinematic — no jerky transitions.

Lighting Rig:

1x Ambient light: intensity 0.1, color #1a1a2e (very dim blue fill)
3x Directional spotlights: animated intensity and color per section
Point lights attached to spark particle emitters (dynamic, short-lived)
Environment map: Dark industrial HDRI (low intensity, mainly for reflections on metal)
Particle Systems:

Dust motes: 200-500 particles, slow brownian motion, visible in light cones
Welding sparks (Section 2): Burst emitter, gravity-affected, orange/white, 50-100 particles per burst, short lifetime (0.5-1s)
Electrical traces (Section 4): Line particles following predefined paths along wires, cyan/blue glow
Embers (Section 7): 50-100 particles, slow upward drift, orange, low opacity
Performance Targets:

60fps on mid-range desktop (GTX 1060 / M1 Mac equivalent)
30fps on mobile (graceful degradation)
Total 3D asset payload: Under 5MB
Time to interactive (3D loaded): Under 3 seconds on 4G
Use progressive loading: Show content immediately, load 3D in background, fade in when ready
Fallback Strategy (Critical):

text

if (WebGL2 not supported OR device memory < 4GB OR mobile with low GPU):
  → Replace 3D canvas with:
    → A pre-rendered MP4 video loop (15-30s, 1080p, compressed to ~3MB)
    → OR high-quality static images with parallax scroll effect (CSS transforms)
    → The foreground content remains identical
  → Detection: Use renderer.capabilities check + navigator.deviceMemory + matchMedia for prefers-reduced-motion
4.9 Homepage — Mobile Considerations
3D canvas renders at 0.5x device pixel ratio on mobile to save GPU
Simplify particle counts by 50% on mobile
If performance drops below 24fps for 3 consecutive seconds, auto-switch to video/image fallback
Touch scroll must feel native — do not hijack scroll. Use GSAP ScrollTrigger in a way that respects natural scroll momentum.
All foreground text sections must be fully readable without the 3D — the 3D is enhancement, not dependency.
PART 5: ABOUT US PAGE
5.1 Page Purpose
Establish trust, tell the company story, introduce the team, and communicate values. This page converts skeptics into believers.

5.2 Section Breakdown
Section 1 — Hero:

Full-width image or atmospheric video background (workshop, crane installation, team at work)
Heading: "WHO WE ARE"
Subheading: Brief one-liner about the company mission
Subtle parallax on scroll
Section 2 — Our Story:

Two-column layout: Text left, image right (or vice versa)
Company origin story, founding year, growth journey
Keep it human and authentic — not corporate fluff
Timeline component (optional): Key milestones — founded, first major project, expansion, certifications
Section 3 — Mission, Vision, Values:

Three cards in a row (or bento grid)
Each with an icon, heading, and short paragraph
Mission: What they do and for whom
Vision: Where they are going
Values: Safety, quality, reliability, responsiveness
Section 4 — The Team:

Grid of team member cards
Each card: Photo (professional, ideally on-site), Name, Title, brief bio or specialty
Hover effect: Card lifts, shows a quote or fun fact
If team photos are not available, use a group photo with a paragraph about the collective expertise
Section 5 — Certifications and Accreditations:

Logo grid of any relevant certifications
Relevant standards compliance (OHS Act, SANS standards, etc.)
Brief explanation of what each certification means for the client
Section 6 — CTA:

"Want to work with us?" or "Let's discuss your project"
Primary CTA button to Contact page
Secondary: Phone number
5.3 3D on About Page
Optional: Very subtle particle background (dust motes or faint sparks) — purely atmospheric
If it impacts load time at all, skip it. This page should load fast.
Recommendation: No 3D on this page. Use high-quality photography and clean typography instead.
PART 6: CONTACT US PAGE
6.1 Page Purpose
Make it as easy as possible for someone to reach Zentro. Multiple contact methods, prominent emergency number, and a clean form.

6.2 Section Breakdown
Section 1 — Hero:

Compact hero (50vh max)
Heading: "GET IN TOUCH"
Subheading: "New project, urgent repair, or just a question — we are here to help."
Section 2 — Contact Methods (above the form):

Three cards side by side:
Card 1: Phone — number, tap-to-call, "Available 24/7 for emergencies"
Card 2: Email — address, mailto link, "We respond within 4 hours"
Card 3: Location — physical address, link to Google Maps
Emergency banner: Full-width, Safety Orange background: "CRANE DOWN? Call our emergency line: 0XX XXX XXXX"
Section 3 — Contact Form:

Two-column layout: Form left, map right (Google Maps embed or Mapbox)
Form fields:
Full Name (required)
Company Name
Email (required)
Phone Number (required)
Service Required (dropdown: New Crane System, Repairs, Electrical, Inspection, Maintenance, Emergency, Other)
Message (textarea)
Preferred Contact Method (radio: Phone, Email, WhatsApp)
Submit button: "Send Enquiry" (Safety Orange)
Form validation: Real-time, inline error messages
Success state: Animated checkmark, "Thank you. We will be in touch within 4 hours."
Use React Hook Form + Zod for validation
Honeypot field for spam prevention + rate limiting on the API route
Section 4 — Operating Hours:

Simple table or list:
Monday–Friday: 07:00–17:00
Saturday: 08:00–13:00 (or as applicable)
Emergency: 24/7/365
Note: "After-hours calls are routed to our on-call technician."
6.3 3D on Contact Page
None. Zero. This page is about speed and conversion. Every millisecond counts.
PART 7: SERVICE PAGES
7.0 Service Page Template
All three service pages (Single Girder, Double Girder, Electrical Chain Hoist) share a common template structure. The content and 3D model differ per page.

7.1 Common Template Structure
Section 1 — Hero:

Full-width atmospheric image or short video loop as background
Product/service name as large heading
One-sentence descriptor
Two CTAs: "Get a Quote" (primary) and "Download Spec Sheet" (secondary, if PDF available)
Breadcrumb navigation: Home > Services > [Current Page]
Section 2 — Overview:

Two-column: Text block left, hero image or illustration right
2-3 paragraphs describing the product/service
Key benefits as a bullet list with custom icons
For Single Girder: Cost-effective, lighter buildings, lower maintenance
For Double Girder: Higher capacity, wider spans, better hook height
For Chain Hoist: Compact, versatile, ideal for lighter loads
Section 3 — 3D Interactive Model Viewer (THE THREE.JS SECTION):

A contained section (100vh or 80vh) with an interactive 3D model of the specific product
User can rotate (drag), zoom (scroll/pinch), and pan the model
Hotspot System: Clickable points on the model that, when clicked, open an info panel:
Hotspot on girder: "Box section girder — Grade 350W steel, welded and stress-relieved"
Hotspot on hoist: "Wire rope hoist — SWL 5-50 ton, VFD controlled"
Hotspot on end truck: "End truck assembly — precision-machined wheels, self-aligning bearings"
Hotspot on electrics: "Control panel — IP65 rated, PLC or contactor logic"
Toggle buttons above the viewer:
"Standard View" (default, PBR materials)
"X-Ray View" (wireframe or transparent shell showing internal components)
"Exploded View" (components separate to show assembly)
Background: Gradient from Steel Dark to Obsidian Black
Loading state: Skeleton with progress bar
Fallback: Static image with hotspot overlays (CSS positioned) for non-WebGL devices
Section 4 — Technical Specifications:

Clean data table or specification grid
Columns: Parameter, Range/Value
Example specs for Single Girder:
Capacity: 1–25 tons
Span: Up to 25m
Lifting Height: Up to 12m
Duty Classification: M3–M5 (FEM)
Control: Pendant / Radio Remote
Power Supply: 380V, 3-phase, 50Hz
Styled with alternating row backgrounds (very subtle) and monospace font for values
Section 5 — Applications / Industries Served:

Grid of atmospheric cards (3-4 cards)
Each card: Dark background image of an industry, overlay gradient, industry name, one-liner
Industries: Steel Mills, Automotive, Warehousing, Manufacturing, Mining, Petrochemical
Cards have subtle hover animation (lift + brighten)
Section 6 — Related Services:

Heading: "Complete Lifecycle Support"
Horizontal scroll cards or grid:
Installation and Commissioning
Preventative Maintenance
Repairs and Refurbishment
Electrical Upgrades
Load Testing and Certification
Each links to the relevant section or page
Section 7 — CTA:

"Need a [Single Girder Crane / Double Girder Crane / Chain Hoist]?"
Brief reassurance line
Primary CTA: "Request a Quote"
Secondary CTA: "Speak to an Engineer: 0XX XXX XXXX"
7.2 Page-Specific Content Notes
Single Girder Overhead Crane:

Emphasize: Cost-effectiveness, suitability for light-to-medium duty, lower building requirements
Typical industries: General manufacturing, warehousing, assembly lines
Capacity range: 1–25 tons
Key selling point: Lower initial cost, lower maintenance, faster installation
Double Girder Overhead Crane:

Emphasize: Heavy-duty capability, larger spans, better hook height, crab-mounted hoists
Typical industries: Steel mills, heavy engineering, shipyards, power plants
Capacity range: 5–100+ tons
Key selling point: Maximum lifting capability and durability for demanding environments
Electrical Chain Hoist:

Emphasize: Versatility, compact size, ease of installation, wide range of capacities
Typical applications: Workshops, production lines, maintenance bays
Capacity range: 250kg–10 tons
Key selling point: Reliable, low-maintenance lifting in any environment
7.3 3D on Service Pages — Technical Specs
Each service page has its own 3D model (or a shared crane model with different configurations)
Model requirements same as homepage: glTF/GLB, Draco compressed, under 3MB per model
The viewer is contained (not full-page scroll-driven like the homepage)
Uses OrbitControls from Drei (damped rotation, limited zoom range)
Hotspots are HTML elements positioned using drei's Html component (projects 3D coordinates to screen space)
X-Ray view: Use a custom shader or simply swap materials to a wireframe/transparent material
Exploded view: Animate mesh positions outward from center using GSAP or useSpring
PART 8: BLOG AND NEWS PAGE
8.1 Blog Index Page
Hero:

Compact hero with heading: "NEWS & INSIGHTS"
Subheading: "Industry updates, project showcases, and technical knowledge from the Zentro team."
Filter Bar:

Category filter tabs: All, Projects, Industry News, Technical, Safety
Optional: Search input with debounced query
Article Grid:

Responsive grid: 3 columns desktop, 2 tablet, 1 mobile
Card design:
Featured image (16:9 aspect ratio, lazy-loaded)
Category badge (small, colored by category)
Title (H3, 2 lines max with line-clamp)
Excerpt (2-3 lines with line-clamp)
Date and estimated read time
Author name (optional)
Hover: Image subtle zoom (scale 1.05), card lifts slightly
Pagination or "Load More" button at bottom
Featured Article:

First/top position in the grid, spans full width
Larger card with side-by-side layout (image left, content right)
Highlighted with a subtle Safety Orange left border
8.2 Blog Single Post Page
Layout:

Max-width: 720px for content column (optimal reading width)
Optional: Table of contents sidebar on desktop (sticky, highlights current section)
Structure:

Breadcrumb: Home > Blog > [Post Title]
Featured image (full content width)
Category badge + Date + Read time
H1 title
Author info (small avatar, name, role)
Article body: Rich text, supports H2/H3, blockquotes, images, code blocks, bullet lists
Typography: 18px body, 1.8 line-height, comfortable reading
Images within post: Full-width with subtle rounded corners and caption support
Bottom of Post:

Tags
Share buttons (LinkedIn, Twitter/X, WhatsApp, Copy Link)
"Related Articles" section: 3 cards in a row
CTA banner: "Need crane services? Contact Zentro today." with button
8.3 3D on Blog
None. Content and readability are the priority.
PART 9: SEO STRATEGY
9.1 Technical SEO
Meta Tags (per page):

Unique title tag: [Page Name] | Zentro Projects — Crane Solutions South Africa
Meta description: Unique, 150-160 characters, includes primary keyword and CTA
Canonical URL on every page
Open Graph tags: og:title, og:description, og:image (unique per page), og:url, og:type
Twitter Card tags: twitter:card (summary_large_image), twitter:title, twitter:description, twitter:image
Structured Data (JSON-LD):

Homepage: Organization schema (name, logo, contact, sameAs for social)
Service pages: Service schema (name, description, provider, areaServed)
Blog posts: Article schema (headline, author, datePublished, dateModified, image)
Contact page: LocalBusiness schema (address, phone, openingHours, geo coordinates)
FAQ schema on service pages if FAQ sections are added
Sitemap and Robots:

Auto-generated sitemap.xml via Next.js (app/sitemap.ts)
robots.txt: Allow all, point to sitemap
Disallow: /api/, /_next/
Performance for SEO:

Core Web Vitals targets:
LCP (Largest Contentful Paint): Under 2.5s
FID (First Input Delay): Under 100ms
CLS (Cumulative Layout Shift): Under 0.1
INP (Interaction to Next Paint): Under 200ms
All images: Next.js Image component with automatic WebP/AVIF, lazy loading, proper width/height
Font optimization: next/font with display: swap
9.2 Keyword Strategy (Per Page)
Homepage:

Primary: overhead crane solutions south africa
Secondary: crane maintenance, crane repairs, industrial lifting equipment
About:

Primary: zentro projects, crane company south africa
Secondary: crane engineers, lifting equipment specialists
Contact:

Primary: crane services contact, overhead crane repairs near me
Secondary: emergency crane repair south africa
Single Girder:

Primary: single girder overhead crane south africa
Secondary: single girder crane supplier, light duty overhead crane
Double Girder:

Primary: double girder overhead crane south africa
Secondary: heavy duty crane, double girder crane installation
Chain Hoist:

Primary: electrical chain hoist south africa
Secondary: chain hoist supplier, electric hoist installation
Blog:

Target long-tail keywords per article: crane maintenance tips, load testing requirements south africa, overhead crane safety, etc.
9.3 Internal Linking Strategy
Every service page links to related services
Blog posts link to relevant service pages
Footer contains links to all key pages
Breadcrumbs on all pages (also generates BreadcrumbList schema)
"Related Articles" on blog posts
PART 10: PERFORMANCE SPECIFICATIONS
10.1 Lighthouse Targets
Metric	Target
Performance	90+ (non-3D pages), 80+ (homepage with 3D)
Accessibility	95+
Best Practices	95+
SEO	100
10.2 Bundle Size Budgets
Asset	Target
Initial JS bundle	Under 150KB (gzipped)
Three.js chunk (lazy)	Under 200KB (gzipped)
3D models (total)	Under 5MB per page
CSS	Under 50KB
Fonts	Under 100KB
Total page weight (non-3D pages)	Under 500KB
Total page weight (homepage)	Under 3MB initial, 5MB with 3D
10.3 Loading Strategy
Server-render all HTML content (Next.js SSR/SSG)
Load critical CSS inline
Lazy-load Three.js and all 3D dependencies via dynamic import
Show content immediately — 3D fades in when ready
Use Suspense boundaries around 3D components with skeleton fallbacks
Preload 3D assets with low priority after initial page paint
All images use next/image with automatic optimization
Route prefetching for likely next pages (service pages from homepage)
PART 11: SECURITY
11.1 Headers (next.config.js)
text

Strict-Transport-Security: max-age=31536000; includeSubDomains; preload
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-XSS-Protection: 1; mode=block
Referrer-Policy: strict-origin-when-cross-origin
Permissions-Policy: camera=(), microphone=(), geolocation=()
Content-Security-Policy: default-src 'self'; script-src 'self' 'unsafe-eval' (needed for Three.js shaders); style-src 'self' 'unsafe-inline'; img-src 'self' data: blob:; connect-src 'self'; font-src 'self'; frame-src 'self' https://www.google.com (for Maps);
11.2 Form Security
Honeypot field on all forms (hidden input, if filled = bot)
Rate limiting on API routes: Max 5 submissions per IP per 15 minutes
Server-side validation with Zod (mirror client-side schemas)
CSRF protection via Next.js built-in mechanisms or custom tokens
Sanitize all inputs before processing or storing
Google reCAPTCHA v3 (invisible) on contact form — or hCaptcha for privacy
11.3 Environment Variables
All sensitive keys (email API, reCAPTCHA secret, CMS keys) in .env.local
Never expose server-side secrets to the client bundle
Use NEXT_PUBLIC_ prefix only for truly public values
PART 12: ACCESSIBILITY (WCAG 2.1 AA)
12.1 Requirements
All interactive elements keyboard-navigable (tab, enter, escape)
Focus visible on all focusable elements (custom focus ring: 2px Safety Orange outline)
All images have descriptive alt text
Color contrast ratios: 4.5:1 minimum for normal text, 3:1 for large text
Form inputs have associated labels (not just placeholders)
Error messages are announced to screen readers (aria-live regions)
Skip-to-content link as first focusable element on every page
Radix UI primitives handle ARIA attributes automatically — leverage this
prefers-reduced-motion: Disable all non-essential animations, replace 3D with static content
prefers-color-scheme: Site is dark by default, but ensure it does not break if forced to light mode
All videos/animations have pause controls
Semantic HTML throughout: proper heading hierarchy, landmarks (nav, main, footer), lists for lists
12.2 3D Accessibility
The 3D canvas must have role="img" and an aria-label describing the scene
All information conveyed in the 3D must also be available in the foreground text content
The 3D is purely decorative/enhancing — no critical info is gated behind it
Keyboard controls for the service page 3D viewer: Arrow keys to rotate, +/- to zoom
PART 13: PROJECT FILE STRUCTURE
text

zentro-website/
├── public/
│   ├── models/
│   │   ├── crane-single-girder.glb
│   │   ├── crane-double-girder.glb
│   │   ├── chain-hoist.glb
│   │   └── crane-lifecycle.glb          (main homepage crane)
│   ├── images/
│   │   ├── hero/
│   │   ├── services/
│   │   ├── team/
│   │   ├── industries/
│   │   └── blog/
│   ├── videos/
│   │   └── crane-fallback.mp4           (3D fallback video)
│   ├── fonts/
│   ├── favicon.ico
│   ├── og-image.jpg
│   ├── robots.txt
│   └── sitemap.xml
├── src/
│   ├── app/
│   │   ├── layout.tsx                    (root layout — nav, footer, fonts, metadata)
│   │   ├── page.tsx                      (homepage)
│   │   ├── about/
│   │   │   └── page.tsx
│   │   ├── contact/
│   │   │   └── page.tsx
│   │   ├── services/
│   │   │   ├── single-girder-overhead-crane/
│   │   │   │   └── page.tsx
│   │   │   ├── double-girder-overhead-crane/
│   │   │   │   └── page.tsx
│   │   │   └── electrical-chain-hoist/
│   │   │       └── page.tsx
│   │   ├── blog/
│   │   │   ├── page.tsx                  (blog index)
│   │   │   └── [slug]/
│   │   │       └── page.tsx              (blog single post)
│   │   ├── api/
│   │   │   └── contact/
│   │   │       └── route.ts              (contact form handler)
│   │   ├── sitemap.ts
│   │   └── robots.ts
│   ├── components/
│   │   ├── ui/                           (shadcn/ui components)
│   │   │   ├── button.tsx
│   │   │   ├── card.tsx
│   │   │   ├── input.tsx
│   │   │   ├── select.tsx
│   │   │   ├── dialog.tsx
│   │   │   ├── dropdown-menu.tsx
│   │   │   ├── navigation-menu.tsx
│   │   │   ├── badge.tsx
│   │   │   ├── skeleton.tsx
│   │   │   ├── table.tsx
│   │   │   └── textarea.tsx
│   │   ├── layout/
│   │   │   ├── navbar.tsx
│   │   │   ├── footer.tsx
│   │   │   ├── mobile-menu.tsx
│   │   │   ├── emergency-banner.tsx
│   │   │   └── breadcrumb.tsx
│   │   ├── homepage/
│   │   │   ├── hero-section.tsx
│   │   │   ├── engineering-section.tsx
│   │   │   ├── repairs-section.tsx
│   │   │   ├── electrical-section.tsx
│   │   │   ├── testing-section.tsx
│   │   │   ├── support-section.tsx
│   │   │   ├── cta-section.tsx
│   │   │   └── scroll-progress.tsx
│   │   ├── services/
│   │   │   ├── service-hero.tsx
│   │   │   ├── service-overview.tsx
│   │   │   ├── model-viewer.tsx
│   │   │   ├── spec-table.tsx
│   │   │   ├── industry-cards.tsx
│   │   │   ├── related-services.tsx
│   │   │   └── service-cta.tsx
│   │   ├── blog/
│   │   │   ├── article-card.tsx
│   │   │   ├── featured-article.tsx
│   │   │   ├── category-filter.tsx
│   │   │   ├── article-body.tsx
│   │   │   ├── share-buttons.tsx
│   │   │   └── related-articles.tsx
│   │   ├── about/
│   │   │   ├── story-section.tsx
│   │   │   ├── values-grid.tsx
│   │   │   ├── team-grid.tsx
│   │   │   └── certifications.tsx
│   │   ├── contact/
│   │   │   ├── contact-form.tsx
│   │   │   ├── contact-cards.tsx
│   │   │   └── map-embed.tsx
│   │   └── shared/
│   │       ├── section-heading.tsx
│   │       ├── animated-counter.tsx
│   │       ├── page-transition.tsx
│   │       └── loading-skeleton.tsx
│   ├── three/                            (all Three.js/R3F code isolated here)
│   │   ├── canvas-wrapper.tsx            (Suspense + lazy load boundary)
│   │   ├── homepage/
│   │   │   ├── crane-scene.tsx           (main homepage 3D scene)
│   │   │   ├── crane-model.tsx           (loads and configures the GLB)
│   │   │   ├── camera-controller.tsx     (scroll-driven camera path)
│   │   │   ├── lighting-rig.tsx          (dynamic lights per section)
│   │   │   ├── particles/
│   │   │   │   ├── dust-motes.tsx
│   │   │   │   ├── welding-sparks.tsx
│   │   │   │   ├── electrical-traces.tsx
│   │   │   │   └── embers.tsx
│   │   │   ├── effects/
│   │   │   │   ├── bloom-pass.tsx
│   │   │   │   ├── volumetric-light.tsx
│   │   │   │   └── stress-heatmap.tsx
│   │   │   └── overlays/
│   │   │       ├── blueprint-overlay.tsx
│   │   │       ├── hud-data.tsx
│   │   │       └── component-labels.tsx
│   │   └── service-viewer/
│   │       ├── interactive-viewer.tsx    (OrbitControls viewer)
│   │       ├── hotspot-system.tsx
│   │       ├── view-modes.tsx            (standard/x-ray/exploded)
│   │       └── viewer-controls.tsx
│   ├── hooks/
│   │   ├── use-scroll-progress.ts
│   │   ├── use-webgl-support.ts
│   │   ├── use-performance-monitor.ts
│   │   ├── use-media-query.ts
│   │   └── use-intersection-observer.ts
│   ├── lib/
│   │   ├── utils.ts                      (cn() helper, etc.)
│   │   ├── constants.ts                  (company info, nav links, service data)
│   │   ├── camera-path.ts               (keyframe definitions)
│   │   ├── metadata.ts                   (SEO meta generator)
│   │   ├── schemas.ts                    (Zod validation schemas)
│   │   └── structured-data.ts            (JSON-LD generators)
│   ├── styles/
│   │   └── globals.css                   (Tailwind v4 imports, custom properties)
│   └── types/
│       ├── index.ts
│       ├── blog.ts
│       └── services.ts
├── .env.local
├── .env.example
├── next.config.ts
├── tailwind.config.ts
├── tsconfig.json
├── postcss.config.js
├── package.json
├── README.md
└── DEPLOYMENT.md
PART 14: AI AGENT PROMPT
This is the prompt you copy and paste into Cursor, Windsurf, v0, Bolt, or any AI coding agent to begin building this project. It references everything above.

----

BEGIN PROMPT:

You are building a production-ready website for Zentro Projects, a South African overhead crane and lifting solutions company. The website must be built with Next.js 15.9 (App Router), React 19, Tailwind CSS v4, shadcn/ui, Radix UI primitives, TypeScript, and Three.js (via React Three Fiber) for 3D elements.

COMPANY CONTEXT: Zentro Projects provides full-lifecycle crane services: engineering and manufacturing of overhead cranes (single girder, double girder), supply and installation of electrical chain hoists and wire rope hoist systems, crane repairs and refurbishment, electrical installations and upgrades, load testing, LTI inspections, statutory surveys, preventative maintenance programs, and 24/7 emergency call-outs. They are NOT just a crane manufacturer — they maintain, repair, inspect, and support cranes throughout their entire operational life. This must be reflected across the entire website.

DESIGN SYSTEM — CINEMA NOIR: The aesthetic is "Heavy Metal Noir" — dark, cinematic, atmospheric. Use Obsidian Black (#0A0A0A) as the primary background, Steel Dark (#141414) for cards, Gunmetal (#1C1C1E) for nav. Primary accent is Safety Orange (#FF6B00), secondary accent is Arc Blue (#00A3FF). Primary text is Weld White (#F5F5F5). Use Inter or Geist Sans for typography, JetBrains Mono or Geist Mono for technical data. The visual language should evoke Blade Runner meets heavy industry — dramatic lighting, high contrast, industrial atmosphere.

PAGES TO BUILD (7 total):

Homepage — immersive 3D scroll experience (Lifecycle Journey)
About Us — company story, team, values, certifications
Contact Us — form, map, emergency number, contact methods
Single Girder Overhead Crane (service page)
Double Girder Overhead Crane (service page)
Electrical Chain Hoist (service page)
Blog and News (index + single post template)
HOMEPAGE — THE LIFECYCLE JOURNEY: This is the hero of the project. A full-page scroll-driven 3D experience using React Three Fiber and GSAP ScrollTrigger. ONE crane model (glTF/GLB) is the constant. As the user scrolls (0-100%), the camera moves around the crane, zooming into different components, and each scroll section highlights a different service.

Section 1 (0-15%) THE AWAKENING: Dark industrial bay, lights flicker on sequentially revealing the crane, dust motes in light beams, company name appears cinematically. Section 2 (15-30%) THE BIRTH: Camera dollies toward crane, welding sparks fly, blueprint wireframe overlay appears labeling components — represents Engineering and Manufacturing. Section 3 (30-45%) WEAR AND HEAL: Camera zooms to hoist gears, shows wear then repair animation — represents Repairs and Refurbishment. Section 4 (45-60%) THE NERVOUS SYSTEM: Camera pans to control panel, Tron-style energy traces through circuits — represents Electrical Installations. Section 5 (60-75%) THE PROOF: Camera pulls back, test load appears, stress heatmap overlay, HUD data readouts — represents Load Testing and Inspections. Section 6 (75-88%) THE GUARDIAN: 3D fades slightly, human element, heartbeat pulse animation — represents 24/7 Support and Maintenance. Section 7 (88-100%) THE INVITATION: Crane on spotlight turntable, clean CTA section — Get a Quote.

The 3D canvas is a fixed background layer. Content sections scroll over it as foreground. The 3D responds to scroll progress but never blocks content interaction. On devices without WebGL support or with low performance, fallback to a pre-rendered video loop or static images with parallax.

SERVICE PAGES: Use a shared template. Each page has: Hero, Overview, Interactive 3D Model Viewer (one contained section with orbit controls, clickable hotspots on components, toggle between Standard/X-Ray/Exploded views), Technical Specifications table, Industry Application cards, Related Services, and CTA.

ABOUT PAGE: Hero with atmospheric image, company story with timeline, mission/vision/values cards, team grid, certifications, CTA.

CONTACT PAGE: Contact method cards (phone, email, location), prominent emergency banner, contact form (React Hook Form + Zod validation, honeypot spam protection), Google Maps embed, operating hours.

BLOG: Index page with category filter, responsive article card grid, featured article. Single post page with max-width reading column, rich content support, share buttons, related articles.

GLOBAL COMPONENTS: Navigation bar — fixed, transparent on hero transitioning to solid with backdrop-blur, includes services mega-dropdown, emergency CTA with pulse animation. Mobile: full-screen overlay menu. Footer — four columns (about, quick links, services, contact), bottom bar with legal links.

3D TECHNICAL REQUIREMENTS:

React Three Fiber canvas with GSAP ScrollTrigger integration
Crane model: glTF/GLB with Draco compression, under 5MB, PBR textures (KTX2 compressed, max 2048x2048)
Separate named meshes for: girders, end trucks, hoist, hook, wire rope, control panel
Camera keyframes interpolated smoothly based on scroll percentage
Lighting rig: Dim blue ambient + 3 animated directional spotlights changing color per section + dynamic point lights from particles
Particle systems: Dust motes, welding sparks, electrical traces, embers
Post-processing: Subtle bloom pass
Performance: 60fps desktop, 30fps mobile, auto-degrade if below 24fps for 3 seconds
Mobile: Render at 0.5x DPR, reduce particle counts 50%
Fallback detection: Check WebGL2 support, device memory, prefers-reduced-motion
SEO:

Unique meta titles and descriptions per page
JSON-LD structured data: Organization, Service, LocalBusiness, Article, BreadcrumbList
Auto-generated sitemap.xml and robots.txt via Next.js
All images via next/image with automatic WebP/AVIF
Proper heading hierarchy (one H1 per page)
Semantic HTML with landmarks
Internal linking between related services and blog posts
SECURITY:

Security headers: HSTS, X-Content-Type-Options, X-Frame-Options, CSP, Referrer-Policy, Permissions-Policy
Form honeypot + rate limiting (5 per IP per 15 min) + server-side Zod validation
reCAPTCHA v3 on contact form
All secrets in .env.local, never exposed to client
ACCESSIBILITY (WCAG 2.1 AA):

All elements keyboard navigable with visible focus rings
Skip-to-content link on every page
Color contrast 4.5:1 minimum
Form labels, aria-live error regions
prefers-reduced-motion: disable animations, replace 3D with static
3D canvas has role="img" with aria-label
No critical information locked behind 3D interaction
PERFORMANCE TARGETS:

Lighthouse: 90+ Performance (non-3D), 80+ (homepage), 95+ Accessibility, 100 SEO
LCP under 2.5s, CLS under 0.1, INP under 200ms
Lazy-load Three.js via dynamic import with Suspense fallback
Initial JS bundle under 150KB gzipped
Server-render all HTML content
Progressive 3D loading: show content first, fade in 3D when ready
Use the file structure provided in the PRD. Keep all Three.js code in src/three/ directory, isolated from the rest of the app. Use dynamic imports to code-split the 3D. Build mobile-first. Use Framer Motion for page transitions and UI animations. Use GSAP only for scroll-driven 3D synchronization.

Start by scaffolding the project, then build the homepage first (it is the most complex), followed by service pages, then about, contact, and blog.

END PROMPT

PART 15: CONTENT THE CLIENT NEEDS TO PROVIDE
Before development can be finalized, Zentro needs to supply:

Company copy: About story, mission statement, values, founding year
Service descriptions: Detailed text for each service (can be refined by a copywriter)
Team photos and bios: Names, titles, headshots
Project portfolio images: Completed installations, workshop photos, on-site work
Client logos / testimonials: If available
Certifications: Any accreditation logos and certificate references
Contact details: Phone (including emergency), email, physical address, operating hours
Technical specifications: Exact spec ranges for each crane/hoist product
Blog content: Initial 3-5 articles to launch with (can be AI-assisted drafts)
Brand assets: Current logo (SVG preferred), any existing brand guidelines
3D model reference: If they have CAD files of their cranes, these can be converted. Otherwise, source from Sketchfab or commission a 3D artist.
PART 16: DEPLOYMENT
Platform: Vercel (recommended for Next.js)

Configuration:

Framework Preset: Next.js
Node version: 20.x
Build command: next build
Output: .next
Environment variables: Set in Vercel dashboard
Domain:

Primary: www.zentro.co.za
Redirect: zentro.co.za → www.zentro.co.za (or vice versa, pick one canonical)
SSL: Automatic via Vercel
CDN:

Vercel Edge Network handles this automatically
3D models served from public/ folder via Vercel CDN with immutable cache headers
Consider a separate CDN bucket (Cloudflare R2 or AWS S3) for large 3D assets if total exceeds 20MB
PART 17: QA CHECKLIST (PRE-LAUNCH)
 All pages render correctly on Chrome, Firefox, Safari, Edge
 Mobile responsive: tested on iPhone SE, iPhone 14, Pixel 7, iPad
 3D loads and animates on desktop Chrome, Safari, Firefox
 3D fallback works on iOS Safari, low-end Android
 Contact form submits successfully and delivers email
 Form validation works (client and server side)
 Honeypot blocks bot submissions
 All links work (no 404s)
 All images have alt text
 Lighthouse scores meet targets
 Structured data validates (Google Rich Results Test)
 Sitemap accessible at /sitemap.xml
 robots.txt accessible at /robots.txt
 Security headers present (check securityheaders.com)
 301 redirects from old URLs (if any existed on previous site)
 Analytics installed (Google Analytics 4 or Plausible)
 Search Console verified and sitemap submitted
 Favicons and OG images display correctly when shared
 prefers-reduced-motion tested
 Keyboard navigation tested end-to-end
 Screen reader tested on at least one page
 404 page designed and functional
 Loading states visible for all async content
 Emergency phone number is correct and tap-to-call works on mobile
That is the complete PRD — every section, every page, every specification, the full AI agent prompt, file structure, SEO strategy, security, accessibility, deployment, and QA checklist.

You can feed the Part 14 AI Agent Prompt directly into Cursor, Windsurf, or any coding agent, and reference the rest of this document as your source of truth throughout development. Want me to go deeper on any specific section?






