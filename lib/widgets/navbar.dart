import 'package:entrenate/screens/screens.dart';
import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
  });

  final pages = const [ExercisesScreen(), NutritionScreen(), RoutineScreen(), BlogScreen(), ProfileScreen() ];

  @override
  Widget build(BuildContext context) {

    const primaryColor = Color.fromARGB(255, 17, 24, 39);

    return BottomNavigationBar(
      onTap: (value) {
        final route = MaterialPageRoute(builder: ( context ) => pages[value]);
        Navigator.push(context, route);
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryColor,
      currentIndex: 0,
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
                BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Perfil',
          
        ),
      ],
      );
  }
}