import 'package:flutter/material.dart';
    
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
    
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'exercise');
    });


    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Image(
                  image: AssetImage('assets/img/splash-logo.png'),
                  fit: BoxFit.contain, // Ajusta la imagen para que se ajuste dentro del contenedor
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Powered By', style: TextStyle(color: Colors.green),),
                    SizedBox(width: 10),
                    Image(image: AssetImage('assets/img/jasubip-logo.png'))
                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
      ),
    );
  }
}