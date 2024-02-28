import 'package:flutter/material.dart';


class navbar extends StatelessWidget {
  const navbar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    const bgColor = Color.fromARGB(255, 3, 7, 18);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryColor,
      currentIndex: 0,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
      elevation: 0,
      items:const [
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Ejercicios'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.egg_alt_outlined),
          label: 'Nutricion'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist_outlined),
          label: 'Rutinas'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history_edu),
          label: 'Blog'
        ),
      ],
      );
  }
}