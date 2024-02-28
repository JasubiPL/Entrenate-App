import 'package:entrenate/widgets/navbar.dart';
import 'package:flutter/material.dart';

class GymExercises extends StatelessWidget {
  const GymExercises({super.key});

  @override
  Widget build(BuildContext context) {

  const primaryColor = Color.fromARGB(255, 17, 24, 39);
  const bgColor = Color.fromARGB(255, 3, 7, 18);

    return Scaffold(
      backgroundColor: bgColor,
      appBar:AppBar(
        backgroundColor: primaryColor,
        title: const Text('EJERCICIOS EN GYM', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('EJERCICIOS EN GYM'),
      ),
      bottomNavigationBar: const navbar(),
    );
  }
}