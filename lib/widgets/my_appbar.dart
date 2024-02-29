import 'package:entrenate/screens/profile_screen.dart';
import 'package:flutter/material.dart';
    
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  
  final String screenTitle;

  const MyAppBar({
    super.key,
    required this.screenTitle,
  });
    
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 17, 24, 39);

    return AppBar(
        backgroundColor: primaryColor,
        title: Text(screenTitle, style: const TextStyle(color: Colors.white)),
        foregroundColor: Colors.white,
        actions:  [
          ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
            onPressed: () {
              final route = MaterialPageRoute(builder: ( context ) => const ProfileScreen());
              Navigator.push(context, route);
            }, 
            child: const CircleAvatar(backgroundImage: AssetImage('assets/img/Perfil.jpg')),
          )
        ],
      );
  }

    @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}