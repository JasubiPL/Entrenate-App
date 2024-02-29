import 'package:entrenate/widgets/my_appbar.dart';
import 'package:entrenate/widgets/navbar.dart';
import 'package:flutter/material.dart';
    
class RoutineScreen extends StatelessWidget {
  const RoutineScreen({super.key});
    
  @override
  Widget build(BuildContext context) {

    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    const bgColor = Color.fromARGB(255, 3, 7, 18);
    
    return const Scaffold(
      backgroundColor: bgColor,
      appBar: MyAppBar(screenTitle: 'Rutinas'),
      body: Center(
        child: Text('Rutinas'),
      ),
      bottomNavigationBar: Navbar(index: 2),
    );
  }
}