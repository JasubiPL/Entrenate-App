import 'package:entrenate/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'exercises';

  static Map<String, Widget Function (BuildContext)> routes = {
    'exercises' : (BuildContext context) => const ExercisesScreen(),
    'nutrition' : (BuildContext context) => const NutritionScreen(),
    'routine' : (BuildContext context) => const RoutineScreen(),
    'blog' : (BuildContext context) => const BlogScreen(),
    'profile' : (BuildContext context) => const ProfileScreen(),
  };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ExercisesScreen()
    );
  }

}