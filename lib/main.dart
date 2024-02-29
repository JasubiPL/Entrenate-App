import 'package:entrenate/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'exercises',
      routes: {
        'exercises' : (BuildContext context) => const ExercisesScreen(),
        'nutrition' : (BuildContext context) => const NutritionScreen(),
        'routine' : (BuildContext context) => const RoutineScreen(),
        'blog' : (BuildContext context) => const BlogScreen(),
        'profile' : (BuildContext context) => const ProfileScreen(),

      },
    );
  }
}
