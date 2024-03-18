import 'dart:math';

import 'package:flutter/material.dart';

/// A [StatelessWidget] that displays a name Text avatar with a customizable radius,
/// background color, text style, and text color.
///
/// If [isTwoChar] is true, the avatar will display the first two characters of
/// the [name]. Otherwise, it will display the first character of the [name].
class NameAvatar extends StatelessWidget {
  /// Creates a [NameAvatar] widget.
  const NameAvatar({
    required this.name,
    super.key,
    this.radius = 40,
    this.isTwoChar = false,
    this.backgroundColor,
    this.textStyle,
    this.textColor,
  });

  /// The name to be displayed on the avatar.
  final String name;

  /// The radius of the avatar. Defaults to 40.
  final double? radius;

  /// Whether to display two characters of the [name]. Defaults to false.
  final bool? isTwoChar;

  /// The background color of the avatar.
  final Color? backgroundColor;

  /// The text color of the avatar.
  final Color? textColor;

  /// The text style of the avatar.
  final TextStyle? textStyle;

  /// Processes the [name] based on the [isTwoChar] value.
  ///
  /// If [name] is empty, an empty string is returned.
  ///
  /// Otherwise, the method returns the first character or the first two characters
  /// of the [name] based on the [isTwoChar] value.
  String processName({required String name, required bool isTwoChar}) {
    if (name.isEmpty) {
      return '';
    }
    final List<String> parts = name.split(' ');
    var processedName = '';
    for (final part in parts) {
      processedName += part.substring(0, 1);
      if (!isTwoChar || processedName.length == 2) {
        break;
      }
    }

    return processedName;
  }

  /// Generates a random color for the avatar's background.
  ///
  /// Returns a[Color] object with random RGB values.
  Color randomColor() {
    final Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor ?? Color(randomColor().value),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          processName(name: name, isTwoChar: isTwoChar ?? false),
          style: textStyle ??
              TextStyle(
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: radius,
              ),
        ),
      ),
    );
  }
}
