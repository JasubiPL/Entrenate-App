import 'package:entrenate/widgets/my_appbar.dart';
import 'package:entrenate/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
    
class NutritionScreen extends StatefulWidget {
  const NutritionScreen({super.key});

  @override
  State<NutritionScreen> createState() => _NutritionScreenState();
}

class _NutritionScreenState extends State<NutritionScreen> {

  List<dynamic> _recipes =[];
  Map<String, dynamic> _data = {};

    @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/1,2,3,4,5,6,7,8,9,10'));
    
    if (response.statusCode == 200) {
      //print(_data['categories']);
      setState(() {
        _recipes = json.decode(response.body);
      });
      print(_recipes);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    const primaryColor = Color.fromARGB(255, 17, 24, 39);
    const bgColor = Color.fromARGB(255, 3, 7, 18);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: const MyAppBar(screenTitle: 'Nutrición'),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index){
          final recipe = _recipes[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(recipe['image']),
                  fit: BoxFit.cover
                ),
              ),
              height: 150,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(recipe['name'], style: const TextStyle(color: Colors.white, fontFamily: 'titles', fontSize: 28),)
              ),
            ),
          );
        }
      ),
      bottomNavigationBar: const Navbar(index: 1,),
    );
  }
}