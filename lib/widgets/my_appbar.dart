import 'package:flutter/material.dart';
    
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{ 
  const MyAppBar({
    super.key,
    this.avatar = true,
    required this.screenTitle,
  });

  final String screenTitle;
  final bool avatar;
    
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 17, 24, 39);

    return AppBar(
        backgroundColor: primaryColor,
        title: Text(screenTitle, style: const TextStyle(color: Colors.white)),
        foregroundColor: Colors.white,
        actions:  [
          if (avatar)  // Mostrar el botón solo si avatar es verdadero
            ElevatedButton(
              style: ElevatedButton.styleFrom(shape: const CircleBorder()),
              onPressed: () {
                Navigator.pushNamed(context, 'profile');
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/img/Perfil.jpg'),
              ),
            ),
        ],
      );
  }

    @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}