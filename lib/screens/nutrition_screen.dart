import 'package:entrenate/widgets/my_appbar.dart';
import 'package:entrenate/widgets/navbar.dart';
import 'package:flutter/material.dart';
    
class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});
    
  @override
  Widget build(BuildContext context) {
    
    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    const bgColor = Color.fromARGB(255, 3, 7, 18);

    return const Scaffold(
      backgroundColor: bgColor,
      appBar: MyAppBar(screenTitle: 'Nutrición'),
      body: Center(
        child: Text('Nutrition'),
      ),
      bottomNavigationBar: Navbar(index: 1,),
    );
  }
}