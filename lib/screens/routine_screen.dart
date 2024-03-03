import 'package:entrenate/mocks/routines_mocks.dart';
import 'package:entrenate/widgets/widgets.dart';
import 'package:flutter/material.dart';
    
class RoutineScreen extends StatelessWidget {
  const RoutineScreen({super.key});
    
  @override
  Widget build(BuildContext context) {

    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    const bgColor = Color.fromARGB(255, 3, 7, 18);

    
    return Scaffold(
      backgroundColor: bgColor,
      appBar: const MyAppBar(screenTitle: 'Rutinas'),
      body: ListView(
        children: [
          Carousel(
            title: 'Principiantes',
            data: beginners,
          ),
          Carousel(
            title: 'Fitness',
            data: fitness,
          ),
          Carousel(
            title: 'Bodybuilders',
            data: bodybuilder,
          ),
          
        ],
      ),
      bottomNavigationBar: const Navbar(index: 2),
    );
  }
}