import 'package:flutter/material.dart';
import 'package:entrenate/widgets/widgets.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {

  const primaryColor = Color.fromARGB(255, 17, 24, 39);
  const bgColor = Color.fromARGB(255, 3, 7, 18);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: const MyAppBar(screenTitle: 'ENTRENATE'),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        child: const Wrap(
          runSpacing: 20,
          spacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            BodyCard(
              label: 'ABDOMEN',
              imgPath: 'assets/img/icons/abs-icon.png',
              route: 'ejercicio',
            ),
            BodyCard(
              label: 'PECHO',
              imgPath: 'assets/img/icons/chest-icon.png',
              route: 'ejercicio',
            ),
            BodyCard(
              label: 'ESPALDA',
              imgPath: 'assets/img/icons/back-icon.png',
              route: 'ejercicio',
            ),
            BodyCard(
              label: 'HOMBROS',
              imgPath: 'assets/img/icons/shoulders-icon.png',
              route: 'ejercicio',
            ),
            BodyCard(
              label: 'BRAZO',
              imgPath: 'assets/img/icons/arm-icon.png',
              route: 'ejercicio',
            ),
            BodyCard(
              label: 'PIERNA',
              imgPath: 'assets/img/icons/legs-icon.png',
              route: 'ejercicio',
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(index: 0),
    );
  }
}