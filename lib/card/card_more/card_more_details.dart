import 'package:flutter/material.dart';

class CardMoreDetails extends StatelessWidget {
  const CardMoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 120,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/dress.jpg',
                    ),
                    fit: BoxFit.contain)),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Laminated',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Louis Vouitton',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width - 200,
                child: const Text(
                  'One button V-neck sling long-sleaved waist female stitiching dress',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      color: Colors.grey),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
