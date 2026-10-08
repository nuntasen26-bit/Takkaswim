# Takkasila Aquatic Athletic Interface — Design System

**Project:** Takkasila Swimming Club Hub (`projects/16948290330630803172`)  
**Design System Asset:** `assets/50d8f729875e408d82646aa5f94dc871`  
**Theme:** Dark Futuristic Aquatic HUD & Fluid Glassmorphism  

---

## 1. Brand Identity & Visual Philosophy

Rooted in the visual identity of collegiate aquatic sports and competitive swimming excellence, the Takkasila design system blends deep abyssal obsidian and midnight navy tones with electric bioluminescent cyans and fluid refractive glassmorphism to project precision, speed, discipline, and hydrodynamic velocity.

### Aesthetic Pillars:
- **Atmospheric Abyss:** Deep multi-layered obsidian (`#0A122A`) and midnight navy (`#0B132B`) canvases create an immersive underwater stadium ambiance.
- **Electric Bioluminescence & Caustics:** Vibrant electric ice-cyan (`#00B4D8`, `#4CD6FB`) and royal blue (`#3A86FF`) simulate refractive water surfaces, pool lane lines, and digital stopwatch telemetry.
- **Athletic Precision:** High-contrast geometric typography (`Space Grotesk` + `Inter`) paired with sharp, shield-inspired crest contours and angular hydrodynamic trims.

---

## 2. Color Palette Tokens

### Primary & Accent Colors
| Role | Hex | Variable / Token | Usage |
|---|---|---|---|
| **Primary** | `#4CD6FB` | `primary` | Core energetic cyan accents, icons, highlighted headings |
| **Primary Container** | `#00B4D8` | `primary-container` | Main action buttons, active pills, high-velocity CTAs |
| **Secondary** | `#ADC6FF` | `secondary` | Supporting badges, soft aquatic tags |
| **Secondary Container** | `#006BE3` | `secondary-container` | Focused states, secondary high-contrast buttons |
| **Tertiary** | `#58D6F1` | `tertiary` | Telemetry metric labels, subtle status markers |
| **Accent Ice Cyan** | `#48CAE4` | `overrideTertiaryColor` | Ghost button borders, hairpins, lap splits |
| **Accent Royal Blue** | `#3A86FF` | `overrideSecondaryColor` | Gradients, record badges, swimmer rank highlights |

### Neutral & Surface Colors
| Role | Hex | Variable / Token | Usage |
|---|---|---|---|
| **Background** | `#0A122A` | `background` | Primary dark stadium canvas background |
| **Surface** | `#0A122A` | `surface` | Card and component base surface |
| **Surface Dim** | `#0A122A` | `surface-dim` | Deep foundation surface |
| **Surface Low** | `#131A33` | `surface-container-low` | Subdued nested panels |
| **Surface Container**| `#171E37` | `surface-container` | Standard module container |
| **Surface High**| `#212942` | `surface-container-high`| Elevated cards, active lists |
| **Surface Highest** | `#2C344D` | `surface-container-highest`| Highlighted cards, modal panels |
| **Surface Lowest** | `#050D25` | `surface-container-lowest` | Deep contrast badge backdrops |
| **On Surface (Text)** | `#DBE1FF` | `on-surface` | Primary text and headers |
| **On Surface Variant** | `#BCC9CE` | `on-surface-variant` | Subtitles, metadata, timestamps |
| **Outline** | `#869398` | `outline` | Rest-state borders, subtle dividers |
| **Outline Variant** | `#3D494D` | `outline-variant` | Low-contrast card outlines |

---

## 3. Typography Hierarchy

- **Headlines & Telemetry Font:** `Space Grotesk` (Google Fonts)
- **Body & Information Font:** `Inter` (Google Fonts)

| Style Token | Font Family | Size / Line Height | Weight | Letter Spacing |
|---|---|---|---|---|
| `display` | Space Grotesk | 40px / 48px | Bold (700) | -0.02em |
| `headline-lg` | Space Grotesk | 30px / 38px | Bold (700) | -0.01em |
| `headline-md` | Space Grotesk | 24px / 32px | SemiBold (600) | 0.00em |
| `headline-sm` | Space Grotesk | 20px / 28px | SemiBold (600) | +0.01em |
| `telemetry-num` | Space Grotesk | 28px / 32px | Bold (700) | -0.03em |
| `title-md` | Inter | 17px / 24px | SemiBold (600) | 0.00em |
| `body-lg` | Inter | 16px / 24px | Regular (400) | 0.00em |
| `body-md` | Inter | 14px / 20px | Regular (400) | +0.01em |
| `body-sm` | Inter | 12px / 16px | Regular (400) | +0.02em |
| `label-lg` | Space Grotesk | 13px / 18px | Bold (700) | +0.08em (uppercase) |
| `label-md` | Space Grotesk | 11px / 16px | SemiBold (600) | +0.10em (uppercase) |

---

## 4. Layout, Spacing & Grid System

- **Target Device:** Mobile-first viewport (390px × 844px / 884px standard handheld, responsive).
- **Grid:** 4-column fluid mobile grid.
- **Outer Edge Margin:** `1.25rem` (20px).
- **Column Gutter:** `1rem` (16px).
- **Rhythmic Scale:**
  - `space-xs`: 4px (micro gaps between telemetry badges and icons)
  - `space-sm`: 8px (internal tag and chip spacing)
  - `space-md`: 16px (standard card padding and form inputs)
  - `space-lg`: 24px (structural separation between modules)
  - `space-xl`: 36px (macro screen section gaps)
- **Ergonomic Safe Zones:** Bottom dock nav padding `env(safe-area-inset-bottom, 0px) + 2rem`.

---

## 5. Elevation & Glassmorphism Depth

1. **Foundation Tier (Level 0):** Pure dark canvas (`#0A122A`) with radial caustic underwater gradients (`radial-gradient(ellipse at top right, rgba(0, 180, 216, 0.12), transparent 70%)`).
2. **Surface Tier 1 (Cards & Modules):** Translucent fill `rgba(28, 37, 65, 0.70)` + `backdrop-filter: blur(16px)` + 1px border `rgba(72, 202, 228, 0.18)`.
3. **Surface Tier 2 (Active Modals & Docks):** Translucent fill `rgba(28, 37, 65, 0.85)` + `backdrop-filter: blur(24px)` + ambient glow `0 8px 32px -4px rgba(0, 180, 216, 0.25)`.
4. **Interactive Accents:** Active record highlights and primary triggers feature `box-shadow: 0 0 20px rgba(0, 180, 216, 0.45)`.

---

## 6. Components & Interactive Patterns

### Primary Athletic Button
- Shape: `rounded-full` (Pill geometry).
- Fill: `linear-gradient(135deg, #00B4D8 0%, #3A86FF 100%)`.
- Typography: Bold Space Grotesk in `#FFFFFF`.
- Hover/Active: Glow halo `box-shadow: 0 0 18px rgba(0, 180, 216, 0.5)`.

### Secondary Ghost Button
- Fill: `rgba(255, 255, 255, 0.05)`.
- Border: `1.5px solid rgba(72, 202, 228, 0.3)`.
- Text: `#48CAE4`.

### Telemetry Metric Tile
- Substrate: Glassmorphic panel with top neon gradient accent.
- Contents: Small uppercase `label-md` in tertiary cyan above oversized `telemetry-num` in pure white or electric cyan.

### Heat & Lane Chips
- Compact pills with dark navy fill and high-contrast `1px solid rgba(0, 180, 216, 0.4)` perimeter.

### Lap-by-Lap Split Logs
- Row items with subtle hairpins `rgba(72, 202, 228, 0.12)`.
- Stroke rate icon on leading edge, stopwatch split times right-aligned.
