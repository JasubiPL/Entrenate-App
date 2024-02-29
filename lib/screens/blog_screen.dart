import 'package:entrenate/widgets/my_appbar.dart';
import 'package:entrenate/widgets/navbar.dart';
import 'package:flutter/material.dart';
    
class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});
    
  @override
  Widget build(BuildContext context) {
    
    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    const bgColor = Color.fromARGB(255, 3, 7, 18);

    return const Scaffold(
      backgroundColor: bgColor,
      appBar: MyAppBar(screenTitle: 'Blog'),
      body: Center(
        child: Text('Blog'),
      ),
      bottomNavigationBar: Navbar(index: 3,),
    );
  }
}