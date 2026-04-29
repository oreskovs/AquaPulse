import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hydro_habit/screens/welcome_screen.dart';

void main() {
  runApp(const ProviderScope(child: HydroHabit()));
}

class HydroHabit extends StatelessWidget {
  const HydroHabit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: WelcomeScreen(),
    );
  }
}
