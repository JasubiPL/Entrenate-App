import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
    required this.title,
    required this.data
  });

  final List<Map> data;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
          child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: PageView.builder(
          controller: PageController(viewportFraction: .8),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final _routine = data[index];
            return Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(_routine['image']), fit: BoxFit.cover)
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _routine['routineName'],
                    style: const TextStyle(fontSize: 28.0, color: Colors.green, fontFamily: 'titles'),
                  ),
                ),
              ),
            );
          },
          ),
        ),
      ],
    );
  }
}