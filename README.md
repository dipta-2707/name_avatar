# NameAvatar Widget

The **NameAvatar** widget is a customizable Flutter widget that displays a circular avatar with text representing a name. This widget is particularly useful for displaying user avatars in various applications.

## Features

- Displays a circular avatar with a customizable radius.
- Customizable background color, text color, and text style.
- Option to display either the first character or the first two characters of the name.
- Randomly generates background color if none is provided.

## Installation

To use the **NameAvatar** widget in your Flutter project, follow these steps:

1. Add the **NameAvatar** widget code to your Flutter project.
2. Import the **NameAvatar** widget in the file where you intend to use it.

## Usage

# Basic
```dart
NameAvatar(
    name: 'John Doe',
    radius: 50,
    backgroundColor: Colors.blue,
    textColor: Colors.white,
    textStyle: TextStyle(fontWeight: FontWeight.bold),
)




