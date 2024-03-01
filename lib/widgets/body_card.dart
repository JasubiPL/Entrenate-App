import 'package:flutter/material.dart';



class BodyCard extends StatelessWidget {
  const BodyCard({
    super.key,
    required this.imgPath,
    required this.label,
    required this.route
  });
  
  final String label;
  final String imgPath;
  final String route;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    
    
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: SizedBox(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          CircleAvatar(
            backgroundImage:  AssetImage(imgPath),
            radius: 50,
          ),
          const SizedBox(height: 15),
          Text(
            label, style: const TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'titles', fontWeight: FontWeight.bold))
         ],
        ),
      ),
    );
  }
}