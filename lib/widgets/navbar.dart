import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  final int index;
  
  const Navbar({
    super.key,
    required this.index
  });

  final pages = const ['exercises', 'nutrition', 'routine', 'blog', 'profile' ];

  @override
  Widget build(BuildContext context) {

    const primaryColor = Color.fromARGB(255, 17, 24, 39);

    return BottomNavigationBar(
      onTap: (value) {
        Navigator.pushReplacementNamed(context, pages[value]);
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryColor,
      currentIndex: index,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
      elevation: 0,
      items:const [
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Ejercicios',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.egg_alt_outlined),
          label: 'Nutricion',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist_outlined),
          label: 'Rutinas',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history_edu),
          label: 'Blog',
          
        ),
      ],
      );
  }
}