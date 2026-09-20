# E-Constat

A work-in-progress Flutter app skeleton. So far it contains the authentication feature, structured feature-first with separate data and presentation layers.

## What is in it

- Login and register screens with a login form widget
- An `AuthRepository` built on Firebase Authentication
- A `UserModel`
- BLoC (`flutter_bloc`) and `equatable` in the dependency list for state management

## Structure

```text
lib/
├── main.dart
└── features/
    └── auth/
        ├── data/            repository and user model
        └── presentation/    screens and widgets
```

## Status

Early stage. Firebase is not configured in this repository, so to run it you need to add your own Firebase project with `flutterfire configure`. For a complete, tested example of the structure I use, see [flutter-clean-architecture](https://github.com/henibenamara/flutter-clean-architecture).
