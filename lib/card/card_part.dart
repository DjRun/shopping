import 'package:flutter/material.dart';
import 'package:shopping/card/card_bottom_part.dart';
import 'package:shopping/card/card_image_items.dart';
import 'package:shopping/card/card_middle_text.dart';
import 'package:shopping/card/card_top_part.dart';

class ItemsPart extends StatelessWidget {
  const ItemsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 4,
        child: Container(
          height: 500,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(children: [
            const CardTopPart(),
            const SizedBox(
              height: 20,
            ),
            const CardMidText(),
            const SizedBox(
              height: 15,
            ),
            const CardMidImages(),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const CardBottom()
          ]),
        ),
      ),
    );
  }
}
