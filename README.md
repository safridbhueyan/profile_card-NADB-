# Alex Rivera | Creative Technologist Portfolio

A responsive and interactive Personal Profile Card application built using Flutter Web. It features a modern, slate-dark glassmorphic design and modularized tab contents detailing a professional profile.

## Key Features
- **Responsive Layout**: Adapts between a dual-column layout for desktop monitors ($\ge 900$px wide) and a stacked single-column layout for mobile screens.
- **Interactive Tab Navigation**: Viewers can toggle between **About**, **Skills**, **Experience**, and **Connect** tabs seamlessly.
- **Copy-to-Clipboard**: Copy email address functionality with feedback tooltips.
- **Contact Modal Dialog**: Modular hire-me form popup.
- **Rich Visuals**: Deep HSL gradients, circular profile avatar, outline badges, and progress bar skill trackers.

---

## Folder Structure
The codebase has been refactored into a structured, modular design:
```text
lib/
├── main.dart                      # App entry point and layout shell
└── view/
    ├── about_tab.dart             # Biography & Metrics
    ├── connect_tab.dart           # Social connections list
    ├── experiance_tab.dart        # Education/work timeline
    ├── skills_tab.dart            # Competency progress bars
    └── widgets/
        ├── social_burron.dart     # Social button helper function
        └── social_button.dart     # Social button class widget
```

---

## Development Guide

### Run Locally
To run the development server:
```bash
flutter run -d chrome
```

### Build for Web (Release)
To compile optimized JavaScript bundles for web deployment:
```bash
flutter build web --release
```
The output will be generated under `build/web/`.

### Deploy to Vercel
Deploy the precompiled folder directly as a static site:
```bash
npx vercel build/web --prod
```
