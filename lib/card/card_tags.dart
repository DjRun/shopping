import 'package:flutter/material.dart';

class CardTags extends StatelessWidget {
  const CardTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 253, 131, 172).withOpacity(0.1),
          ),
          child: const Center(
            child: Text(
              "# Louis Vouitton",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 10, color: Colors.brown),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 255, 85, 142).withOpacity(0.1),
          ),
          child: const Center(
            child: Text(
              "# Chloe",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 10, color: Colors.brown),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
