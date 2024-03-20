import 'package:flutter/material.dart';
import 'package:name_avatar/name_avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name Avatar Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Avatar'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NameAvatar(
              name: 'Dipta Das Suvo',
              radius: 50,
              isTwoChar: true,
            ),
            const SizedBox(
              height: 12,
            ),
            NameAvatar(
              name: 'Emily Patel',
              isTwoChar: true,
            ),
            const SizedBox(
              height: 12,
            ),
            NameAvatar(
              name: 'Isabella Nguyen',
              isTwoChar: false,
            ),
            const SizedBox(
              height: 12,
            ),
            NameAvatar(
              name: 'Xavier',
              isTwoChar: true,
            ),
          ],
        ),
      ),
    );
  }
}
