# 💧 AquaPulse

**AquaPulse** is a sleek, modern hydration tracking application built with **Flutter**. It helps users stay on top of their health by setting daily water intake goals and providing an intuitive interface to log consumption in real-time.

---

## ✨ Features

- **Personalized Experience**: Custom user greeting based on your name.
- **Dynamic Goal Setting**: Set your daily water intake target in milliliters.
- **Visual Progress**: Interactive circular progress indicator showing your daily percentage.
- **Quick Add & Custom Logging**: Fast-access buttons for standard amounts (250ml, 500ml) or enter a custom amount.
- **Clean UI/UX**: Minimalist design with smooth transitions and Lottie animations.
- **State Management**: Built using **Riverpod** for efficient and scalable state handling.

---

## 🚀 Tech Stack

- **Framework:** [Flutter](https://flutter.dev/)
- **State Management:** [Riverpod](https://riverpod.dev/)
- **Animations:** [Lottie for Flutter](https://pub.dev/packages/lottie)
- **Theming:** Material 3 with a custom Blue-Accent color scheme

---

## 🛠️ Installation & Setup

1.  **Clone the repository:**

    ```bash
    git clone [https://github.com/oreskovs/AquaPulse.git](https://github.com/oreskovs/AquaPulse.git)
    ```

2.  **Navigate to the project folder:**

    ```bash
    cd AquaPulse
    ```

3.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

4.  **Run the app:**
    ```bash
    flutter run
    ```

---

## 📱 Project Structure

The project follows a clean directory structure to separate logic from UI:

- `lib/screens/`: Contains all full-screen widgets like `WelcomeScreen`, `YourNameScreen`, and `MainScreen`.
- `lib/widgets/`: Reusable UI components like `AddButton` and `CustomButton`.
- `lib/providers.dart`: Centralized state management using Riverpod providers.

---

## 📸 Screenshots

|                           Welcome Screen                            |                           Goal Setting                            |                        Progress Tracking                         |
| :-----------------------------------------------------------------: | :---------------------------------------------------------------: | :--------------------------------------------------------------: |
| ![Welcome](https://via.placeholder.com/200x400?text=Welcome+Screen) | ![Goal](https://via.placeholder.com/200x400?text=Question+Screen) | ![Main](https://via.placeholder.com/200x400?text=Main+Dashboard) |

> _Note: Replace these placeholders with actual screenshots from your emulator for a better looking profile!_

---

## 📄 License

This project is open-source. Feel free to use it for learning or as a base for your own projects.
