// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:name_avatar/name_avatar.dart';

void main() {
  group('NameAvatar', () {
    test('can be instantiated', () {
      expect(NameAvatar(name: '',), isNotNull);
    });
  });
}
