# MyMTNApp NG Clone (Learning Project)

This is a personal learning project where I recreated the core UI and user experience of the official MyMTNApp NG mobile application.  
It is **not affiliated with or endorsed by MTN Nigeria** or any of its subsidiaries.

---

## 🚨 Important Notes on Licensing

### 🔤 Fonts
The original MyMTN app uses **MTN Brighter Sans**, a proprietary font licensed for personal use only.  
This project replaces it with the open-source [**Manrope**](https://fonts.google.com/specimen/Manrope) font for all public code and builds.  
👉 **MTN Brighter Sans font files are not included** in this repository.

### 🔤 Want to use MTN Brighter Sans font locally?
By default, this project uses the open-source [Manrope](https://fonts.google.com/specimen/Manrope) font to keep it open and safe for sharing.
But if you have access to **MTN Brighter Sans** and want to use it locally for personal builds:

1. **Download the font on your computer**

2. **Place the font files** (e.g. `MTNBrighterSans-Regular.ttf`, `MTNBrighterSans-Bold.ttf`) in your project `assets/fonts/` folder:


3. **Update your `pubspec.yaml` like this:**
```yaml
flutter:
  fonts:
    - family: MTNBrighterSans
      fonts:
        - asset: assets/fonts/MTNBrighterSans-Regular.ttf
        - asset: assets/fonts/MTNBrighterSans-Bold.ttf 
```        
4 **Update your theme file `(app_theme.dart)` like this:**
```yaml
   const kFontFamily = 'MTNBrighterSans';
   ```

### 🟡 Logos and Branding
This project **does not include** any official MTN logos, icons, or branding.  
Any logo seen in screenshots or local builds is either a **placeholder** or used **only for personal testing purposes** and not meant for public or commercial use.

### 🖼 Carousel Images
Some original promotional images from the official app were replaced with royalty-free or placeholder images in this public version to comply with copyright rules.

---

## 📦 Usage

This project is intended **only for educational and personal learning purposes**.  
Do **not**:
- Use this codebase or any assets for commercial products.
- Distribute the app or content in a way that suggests affiliation with MTN.

---

## 📷 Screenshots

> *Note: Screenshots below may contain placeholder text or images to replace proprietary assets.*

<!-- Insert screenshots here -->
<!-- Example: ![Home Screen](screenshots/home_screen.png) -->
![Untitled design](https://github.com/user-attachments/assets/8f2ec42c-61f3-45c6-9f63-6aa4f343ab78)


---

## 🚀 Getting Started

1. **Clone the repo**
   ```bash
   git clone https://github.com/GreatGrant/MyMTNNGAppClone.git
2. **Get dependencies**
    ```bash
    flutter pub get
3. Run the app
    ```bash
    flutter run
> **Note:**  
> If you want to use the **MTN Brighter Sans** font locally:
>
> 1. Install it on your system manually.
> 2. Update the `pubspec.yaml` file to point to the local font file path.
>
> **⚠️ Do not commit the font files or paths to any online repository.**

## ⚠️ Disclaimer

All trademarks, service marks, and logos referenced in this project belong to their respective owners.  
This is **not an official MTN product**, and this repository is intended for **learning purposes only**.
