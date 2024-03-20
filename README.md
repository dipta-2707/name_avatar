# NameAvatar Widget

The **NameAvatar** widget is a customizable Flutter widget that displays a circular avatar with text representing a name. This widget is particularly useful for displaying user avatars in various applications.

<p>
    <img src="https://github.com/dipta-2707/name_avatar/blob/master/Screenshots/Screenshot_example.png?raw=true"/>
</p>


# How to use
```dart
import 'package:name_avatar/name_avatar.dart';
```
```dart
NameAvatar(
    name: 'John Doe',
    radius: 50,
    backgroundColor: Colors.blue,
    textColor: Colors.white,
    textStyle: TextStyle(fontWeight: FontWeight.bold),
)
```
# Features

- Displays a circular avatar with a customizable radius.
- Customizable background color, text color, and text style.
- Option to display either the first character or the first two characters of the name.
- Randomly generates background color if none is provided.

