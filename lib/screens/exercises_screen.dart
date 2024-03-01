import 'package:flutter/material.dart';
import 'package:entrenate/widgets/widgets.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {

  const primaryColor = Color.fromARGB(255, 17, 24, 39);
  const bgColor = Color.fromARGB(255, 3, 7, 18);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: const MyAppBar(screenTitle: 'ENTRENATE'),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1,
        children: const [
          BodyCard(
            label: 'Abdomen',
            imgPath: 'assets/img/icons/abs-icon.png',
          ),
          
        ],
      ),
      bottomNavigationBar: const Navbar(index: 0),
    );
  }
}