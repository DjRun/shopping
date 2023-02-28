import 'package:flutter/material.dart';

class CardBottom extends StatelessWidget {
  const CardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.reply,
          color: Colors.brown.withOpacity(0.4),
          size: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "1.7k",
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
        ),
        const SizedBox(
          width: 15,
        ),
        Icon(
          Icons.comment,
          color: Colors.brown.withOpacity(0.4),
          size: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "1.7k",
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 230,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "2.3k",
                style: TextStyle(fontFamily: "Montserrat", fontSize: 16),
              )
            ],
          ),
        ),
      ],
    );
  }
}
