# 🚀 Alex Rivera | Creative Technologist Portfolio

A responsive and interactive **Personal Profile Card** application built with **Flutter Web**. The project features a modern slate-dark glassmorphic UI, smooth tab navigation, and a modular architecture that showcases a professional portfolio experience.


[![Live Demo](https://img.shields.io/badge/Live-Demo-success?style=for-the-badge)](https://web-gamma-lake-69.vercel.app/)
---

## ✨ Features

### 📱 Responsive Design
- Desktop layout for screens wider than **900px**
- Mobile-friendly stacked layout for smaller devices
- Adaptive UI across different screen sizes

### 🧭 Interactive Navigation
- Smooth tab switching between:
  - About
  - Skills
  - Experience
  - Connect

### 📋 User-Friendly Interactions
- Copy email address to clipboard
- Tooltip feedback on successful copy
- Interactive social media buttons

### 💼 Contact System
- "Hire Me" modal dialog
- Easy-to-access contact form interface

### 🎨 Modern UI Design
- Glassmorphism-inspired components
- Deep HSL gradient backgrounds
- Circular profile avatar
- Outline badges
- Animated skill progress bars

---

## 📂 Project Structure

```text
lib/
├── main.dart                      # Application entry point
└── view/
    ├── about_tab.dart             # Biography & profile metrics
    ├── connect_tab.dart           # Social media connections
    ├── experiance_tab.dart        # Education & work timeline
    ├── skills_tab.dart            # Skills and progress indicators
    └── widgets/
        ├── social_burron.dart     # Social button helper function
        └── social_button.dart     # Reusable social button widget
```

---

## 🛠️ Technologies Used

- Flutter
- Dart
- Flutter Web
- Material Design

---

## 🚀 Getting Started

### Prerequisites

Make sure Flutter is installed:

```bash
flutter doctor
```

---

### Run Locally

Clone the repository:

```bash
git clone https://github.com/your-username/profile_card.git
```

Navigate to the project folder:

```bash
cd profile_card
```

Run the application:

```bash
flutter run -d chrome
```

---

## 🌐 Build for Production

Generate an optimized web build:

```bash
flutter build web --release
```

Build files will be available in:

```text
build/web/
```

---

## 📦 Deploy to Vercel

Deploy the generated web build:

```bash
npx vercel --prod
```

Or connect the GitHub repository directly to Vercel for automatic deployments.

---

## 📸 Preview

_Add screenshots or GIF demonstrations here._

```md
![Portfolio Preview](assets/preview.png)
```

---

## 👤 Author

**Alex Rivera**  
Creative Technologist & Designer

---

## 📄 License

This project is available under the MIT License.
