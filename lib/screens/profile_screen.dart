import 'package:entrenate/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
    
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
    
  @override
  Widget build(BuildContext context) {
    
    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    const bgColor = Color.fromARGB(255, 3, 7, 18);

    return const Scaffold(
      backgroundColor: bgColor,
      appBar: MyAppBar(screenTitle: 'Mi Perfil', avatar: false,),
      body: Center(
        child: Text('Pefil'),
      ),
    );
  }
}