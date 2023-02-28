import 'package:flutter/material.dart';

class HighlightPart extends StatelessWidget {
  const HighlightPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.blue.shade300,
      height: 140,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          listItem('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          const SizedBox(
            width: 10,
          ),
          listItem('assets/model2.jpeg', 'assets/chloelogo.png'),
          const SizedBox(
            width: 20,
          ),
          listItem('assets/model3.jpeg', 'assets/dress.jpg'),
          const SizedBox(
            width: 20,
          ),
          listItem('assets/model1.jpeg', 'assets/louisvuitton.jpg'),
          const SizedBox(
            width: 20,
          ),
          listItem('assets/model2.jpeg', 'assets/chloelogo.png'),
          const SizedBox(
            width: 20,
          ),
          listItem('assets/model3.jpeg', 'assets/chanellogo.jpg'),
        ],
      ),
    );
  }

  listItem(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.contain)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
            child: Text("Follow",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
