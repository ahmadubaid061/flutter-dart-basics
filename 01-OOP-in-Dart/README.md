# 01 - OOP in Dart

Beginner-level Dart programs covering Object-Oriented Programming basics — classes, objects, constructors, and methods.

## Structure

```
01-OOP-in-Dart/
├── 00-Classes-and-Objects.dart
└── Student Management System/
    ├── Student.dart
    └── main.dart
```

## Contents

- `00-Classes-and-Objects.dart` — Class basics
- `Student.dart` — Student class definition
- `main.dart` — Uses Student class with a list of students

## Concepts Covered

- Defining a class with properties and a constructor
- Creating objects from a class
- Writing methods to read, modify, and print class data
- Using a list of objects (`List<Student>`)
- Looping through objects to filter and compare data
- Nullable types (`Student?`) and null checks

## How to Run

```bash
# Classes and Objects basics
dart run 00-Classes-and-Objects.dart

# Student Management System
cd "Student Management System"
dart run main.dart
```

> Note: `main.dart` depends on `Student.dart` (imported via `import 'Student.dart';`), so keep both files in the same folder.