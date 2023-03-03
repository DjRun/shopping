import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shopping/highlight/item/highlight_item.dart';

class HighlightPart extends StatelessWidget {
  const HighlightPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          // return Text('text $index');
          return HighlightItem(
            imageTitle: "follow",
            imagePath: 'assets/model2.jpeg',
          );
        },
      ),
    );
  }
}
