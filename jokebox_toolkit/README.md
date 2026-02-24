
Course Project:Prompt-Powered Kickstart: Building a Beginner’s Toolkit for [Language/Framework/API/Library]
Student: Pauline Moraa Nyaribari
Project: Flutter JokeBox


# JokeBox Toolkit — Flutter Beginner Capstone
A beginner-friendly Flutter project that demonstrates how to build a simple cross-platform application using a public API, clean UI design, navigation, and state management.

This project was developed as part of the **Moringa AI Capstone — Beginner’s Toolkit with GenAI**.

## Features
-  Material 3 UI with Card layout
- Fetches random jokes from a public API
- Refresh button for new jokes
-  Add/remove jokes from Favorites
- Navigation between Home and Favorites screens
-  Error handling and loading states
-  Empty-state messaging for Favorites list
-  Beginner-friendly project structure


## Technology Stack

- **Flutter (Dart)** — Cross-platform UI framework
- **Material 3** — Modern UI design system
- **http package** — API communication
- **icanhazdadjoke API** — Source of joke data

---

## What the App Does

### Home Screen
- Displays a random joke
- “New Joke” button fetches another joke
- Heart icon saves/removes favorites
- Shows count of saved jokes

### Favorites Screen
- Lists all saved jokes
- Delete icon removes a joke
- Shows message if no favorites exist

---

## Setup Instructions

### Requirements

- Flutter SDK installed  
- Visual Studio Code (with Flutter & Dart extensions)  
- Google Chrome (for web version)

---

### Install Dependencies

From the project root:

flutter pub get
Enable Web Support (if not already enabled)
flutter config --enable-web
▶Run the App (Web)
flutter run -d chrome

The application will open in your browser.

 Project Structure
lib/
 ├── models/      → Data models
 ├── services/    → API client (HTTP requests)
 ├── screens/     → UI screens (Home & Favorites)
 └── main.dart    → Application entry point

docs/
 ├── TOOLKIT.md   → Beginner Toolkit documentation
 └── screenshots/ → App screenshots (optional)
 Learning Objectives Demonstrated

This project demonstrates beginner-level Flutter skills:

Widget-based UI construction

Asynchronous programming with async/await

API integration and JSON parsing

Basic state management using setState

Screen navigation with Navigator

Error handling and user feedback

 API Used

icanhazdadjoke API

Website: https://icanhazdadjoke.com/

Returns random jokes in JSON format

No authentication required

 Troubleshooting
 Error: No pubspec.yaml file found

Run commands inside the project directory:

cd jokebox_toolkit
 Flutter command not found

Ensure Flutter is installed correctly:

flutter doctor
 Documentation

# Full beginner toolkit documentation is available here:

docs/TOOLKIT.md

-This document explains:
-Flutter setup on Ubuntu
-Step-by-step installation
- AI prompt usage
- Common issues encountered
- Learning reflections
- Capstone Information

 ### License

This project is for educational purposes.
