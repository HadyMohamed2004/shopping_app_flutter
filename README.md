# 🛍️ Shopping App M

A beautiful and modern Flutter shopping application with smooth animations and intuitive user interface.

## 📱 Project Overview

Shopping App M is a comprehensive e-commerce mobile application built with Flutter. The app provides users with a seamless shopping experience featuring product browsing, user authentication, and interactive product management.

### 🎯 Key Highlights

- **Modern UI/UX Design** with smooth animations
- **User Authentication** with Sign In/Sign Up functionality
- **Product Catalog** with grid and list views
- **Interactive Shopping** with add-to-cart functionality
- **Responsive Design** optimized for mobile devices

## ✨ Features

### 🔐 Authentication System

- **Welcome Screen** with animated navigation
- **Sign In** with email and password validation
- **Sign Up** with form validation and confirmation
- **Smooth Transitions** between authentication screens

### 🏠 Home Screen

- **Featured Products** carousel with page indicators
- **Product Grid** displaying 4 products (2x2 layout)
- **Hot Offers** horizontal scrolling section
- **Interactive Product Cards** with add-to-cart functionality

### 🛒 Shopping Features

- **Product Browsing** with high-quality images
- **Add to Cart** with instant feedback via SnackBar
- **Price Display** with clear formatting
- **Product Information** including titles and descriptions

### 🎨 UI/UX Features

- **Fade Animations** for smooth screen transitions
- **Material Design** components and theming
- **Custom Fonts** (Suwannaphum) for enhanced typography
- **Shadow Effects** and rounded corners for modern look
- **Responsive Layout** adapting to different screen sizes

## 🚀 Setup Instructions

### Prerequisites

Before running this project, ensure you have the following installed:

- **Flutter SDK** (version 3.0 or higher)
- **Dart SDK** (comes with Flutter)
- **Android Studio** or **VS Code** with Flutter extensions
- **Android Emulator** or **Physical Device** for testing

### Installation Steps

1. **Clone the Repository**

   ```bash
   git clone <repository-url>
   cd shopping_app_m
   ```

2. **Install Dependencies**

   ```bash
   flutter pub get
   ```

3. **Verify Flutter Installation**

   ```bash
   flutter doctor
   ```

   Ensure all checks pass before proceeding.

4. **Run the Application**
   ```bash
   flutter run
   ```

### 📁 Project Structure

```
lib/
├── functions/
│   └── alerts.dart          # Custom alert dialogs
├── screens/
│   ├── welcome.dart         # Welcome/landing screen
│   ├── signin.dart          # Sign in screen
│   ├── signup.dart          # Sign up screen
│   └── home.dart            # Main home screen with products
├── main.dart                # App entry point
└── README.md               # This file

assets/
├── f1.png, f2.png          # Featured product images
├── o1.jpg - o5.jpg         # Product images
├── welcome.jpg             # Welcome screen image
└── Suwannaphum.ttf         # Custom font
```

### 🎮 How to Use

1. **Launch the App**

   - The app starts with the welcome screen
   - Choose between "Sign In" or "Sign Up"

2. **Authentication**

   - **Sign Up**: Fill in name, email, password, and confirm password
   - **Sign In**: Enter email and password
   - Both screens include form validation

3. **Browse Products**

   - View featured products in the carousel
   - Browse all products in the 2x2 grid layout
   - Scroll through hot offers horizontally

4. **Add to Cart**
   - Tap the "Add to Cart" button on any product
   - See instant feedback with a green SnackBar message

### 🔧 Configuration

#### Custom Font

The app uses a custom font (Suwannaphum). Make sure the font file is properly declared in `pubspec.yaml`:

```yaml
fonts:
  - family: Suwannaphum
    fonts:
      - asset: assets/Suwannaphum.ttf
```

#### Assets

All product images and assets are stored in the `assets/` folder. Ensure all image files are properly referenced in `pubspec.yaml`:

```yaml
assets:
  - assets/
```

### 🎨 Customization

#### Colors

The app uses a consistent color scheme:

- **Primary**: Blue (`Colors.blue`)
- **Accent**: Deep Purple (`Colors.deepPurple`)
- **Success**: Green (`Colors.green`)
- **Text**: Various shades of grey

#### Animations

- **Fade Transitions**: 500-1200ms duration
- **Page Indicators**: Smooth dot animations
- **SnackBar**: Floating behavior with 2-second duration

### 🐛 Troubleshooting

#### Common Issues

1. **Flutter Doctor Issues**

   ```bash
   flutter doctor --android-licenses
   flutter clean
   flutter pub get
   ```

2. **Build Errors**

   - Ensure all dependencies are installed: `flutter pub get`
   - Clean build cache: `flutter clean`
   - Rebuild: `flutter run`

3. **Asset Loading Issues**
   - Verify assets are declared in `pubspec.yaml`
   - Check file paths are correct
   - Restart the app after adding new assets
