# Prompt-Powered Kickstart: Flutter Beginner Toolkit — JokeBox (API + UI + Navigation)

**Student:** Pauline Moraa Nyaribari  
**Course/Program:** Moringa AI Capstone (Beginner’s Toolkit with GenAI)  
**Date:** 24 Feb 2026  
**Chosen Tech:** Flutter (Dart)

## 1 Title & Objective

### Technology chosen
**Flutter (Dart)** — a cross-platform UI framework by Google for building apps for **Android, iOS, Web, and Desktop** from a single codebase.

### Why I chose it
I chose Flutter because it makes it possible to build both web and mobile apps using one codebase while maintaining a clean UI. It also has a strong ecosystem, good tooling (hot reload), and a widget-based approach that is beginner-friendly once you understand the structure.

### End goal of this toolkit
Build and document a small runnable beginner project called **JokeBox Toolkit** that:
- Fetches a random joke from a public API
- Displays it in a simple UI card
- Allows refreshing jokes
- Allows saving jokes to Favorites
- Navigates between Home and Favorites screens

## 2 Quick Summary of Flutter
Flutter is a UI toolkit used to build cross-platform applications using the Dart programming language. Flutter apps are built using **widgets** (UI building blocks). It supports rapid development through **hot reload** and provides rich UI components via **Material Design / Material 3**.

**Where it is used:** mobile apps, web apps, prototypes, startup MVPs, dashboards, and production cross-platform applications.

**Real-world example:** Teams use Flutter to ship both Android and iOS apps faster using one codebase.

## 3 System Requirements
- **OS:** Ubuntu (Linux)
- **Editor:** Visual Studio Code (VS Code)
- **Tools required:**
  - Flutter SDK (installed via Snap)
  - Flutter & Dart extensions in VS Code
  - Google Chrome (for Flutter Web)
- **Packages used:**
  - `http` (to perform API calls)

## 4 Installation & Setup Instructions (Ubuntu + VS Code)

### 4.1 Install VS Code + Extensions
1. Install VS Code on Ubuntu (if not installed).
2. Open VS Code → Extensions and install:
   - **Flutter**
   - **Dart**

### 4.2 Install Flutter on Ubuntu (Snap)
Install Flutter using classic confinement:
sudo snap install flutter --classic

Verify Flutter is installed:

which flutter
flutter --version

Run the environment check:

flutter doctor
4.3 Enable Flutter Web & Confirm Chrome Device

Enable web support:

flutter config --enable-web
flutter devices
4.4 Create the Project

From your workspace directory:

flutter create jokebox_toolkit
cd jokebox_toolkit
code .
4.5 Add the HTTP Dependency

Open pubspec.yaml and add this under dependencies::
YAML
http: ^1.2.2

Then fetch dependencies:

flutter pub get
4.6 Run the App in Chrome
flutter run -d chrome
## Expected: The app opens in the browser and loads content.

5 A working Example (What the Project Does)
Project Name: JokeBox Toolkit

This Flutter app demonstrates beginner-friendly Flutter concepts using a working project.
Features implemented
Calls a public API (https://icanhazdadjoke.com/) and requests JSON data.
Displays the joke inside a clean Card UI.
Supports “New Joke” refresh (calls the API again).
Supports adding/removing a joke from Favorites.
Navigates to a Favorites screen where saved jokes appear and can be deleted.
Expected output
Home screen shows:
AppBar title: “JokeBox Toolkit”
A random joke displayed
A “New Joke” button
A favorite toggle (heart icon)
Favorites count
Favorites screen shows:
List of saved jokes

### 6 AI Prompt Journal

- AI prompts used and your learning reflections (Documentation reference).
- Below are the prompts I used in ai.moringaschool.com (or equivalent GenAI tool), what I used from them, and how they improved my learning process.

Prompt 1 — Install Flutter on Ubuntu (Snap)
- Prompt used: “Guide me to install Flutter on Ubuntu using snap, including how to handle the --classic warning.”

- What I used: Explanation of why Flutter requires --classic, plus verification using which flutter, flutter --version, and flutter doctor.
- Reflection: This prompt saved time and helped me verify my environment quickly instead of troubleshooting blindly.

Prompt 2 — Run Flutter on Web (Chrome)

- Prompt used: “How do I run a Flutter project in Chrome on Ubuntu and fix device detection issues?”
- What I used: Steps for enabling web support, checking devices, and running with flutter run -d chrome.
- Reflection: I learned that Flutter must run inside the folder containing pubspec.yaml, and that web must be enabled before Chrome appears as a run target.

Prompt 3 — Use HTTP package to fetch JSON from an API
- Prompt used: “Create a simple Flutter example that fetches JSON from an API using the http package, including error handling.”
- What I used: Adding http to pubspec.yaml, using async/await, setting headers, decoding JSON, and wrapping calls in try/catch.
- Reflection: This made networking in Flutter much easier to understand and helped me implement loading and error states cleanly.

Prompt 4 — Navigation and Favorites screen
- Prompt used: “Show how to navigate to a second screen in Flutter and pass data/callbacks to manage favorites.”
- What I used: Navigator.push, passing the favorites list, and using callbacks to remove favorites from the list.
- Reflection: This helped me structure the app into screens and keep logic beginner-friendly.

Prompt 5 (Optional) — UI polish (Card layout + buttons)
- Prompt used: “Design a clean beginner UI in Flutter using Material 3, Card, spacing, and buttons.”
- What I used: Card layout, padding, spacing using SizedBox, and responsive width using ConstrainedBox.
- Reflection: It improved the design without making the code complicated.

7) Common Issues & Fixes (Debug Notes)
Issue 1: Error: No pubspec.yaml file found
Cause: Running Flutter commands outside the project root directory.
Fix:
cd jokebox_toolkit
flutter run -d chrome

Issue 2: flutter command not found
Cause: Flutter wasn’t installed yet or terminal needed refresh.
Fix:
sudo snap install flutter --classic
which flutter
flutter --version
flutter doctor
Issue 3: Dependency not working / missing package

Cause: pubspec.yaml edited but dependencies not fetched.
Fix:

flutter pub get
Issue 4: HomePage showing a placeholder screen

Cause: home_page.dart still contained placeholder content during debugging.
Fix:

flutter clean
flutter run -d chrome
### 8 References

## Moringa Curriculum link that i used to help me in this AI prompt 
 [https://training.moringaschool.com/courses/8/pages/exercise-code-documentation?module_item_id=229]

[https://training.moringaschool.com/courses/8/pages/exercise-readme-and-user-guide-documentation?module_item_id=230]

[https://training.moringaschool.com/courses/8/pages/exercise-api-documentation?module_item_id=228]

[https://training.moringaschool.com/courses/8/pages/using-ai-to-debug-errors?module_item_id=231]

[https://training.moringaschool.com/courses/8/pages/using-ai-to-help-with-testing?module_item_id=232]

[https://training.moringaschool.com/courses/8/pages/learning-a-new-programming-language-with-ai?module_item_id=245]

[https://training.moringaschool.com/courses/8/pages/learn-a-new-framework-library-or-api?module_item_id=246]
