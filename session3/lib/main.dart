import 'package:flutter/material.dart';

import 'notes_screen.dart';


void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NotesScreen()
    );
  }
}

