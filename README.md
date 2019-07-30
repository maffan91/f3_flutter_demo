# flutter_demo

This project contains demonstration of Flutter mobile as well as the web.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.io/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Running Mobile App

To run mobile app, follow these steps:

- Checkout `dev` branch
- Make sure you have connected an Android device OR you have a running Android Emulator
- Run the following command:
  - `flutter run android`
- Alternatively you can run the project in Visual Studio Code by pressing `Ctrl + F5`

## Running Web App

Assuming you have already installed Flutter for web, follow these steps:

- Checkout `web` branch
- Run the following command:
  - `webdev serve --auto restart`
    If the above command didn't work, try:
  - `flutter pub global run webdev serve --auto restart`
    This will run the application on `http://127.0.0.1:8080`
