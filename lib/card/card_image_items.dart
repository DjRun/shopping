import 'package:flutter/material.dart';
import 'package:shopping/card/card_more/card_more.dart';

class CardMidImages extends StatelessWidget {
  const CardMidImages({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    CardMore(imgPath: 'assets/modelgrid1.jpeg')));
          },
          child: Hero(
            tag: 'assets/modelgrid1.jpeg',
            child: Container(
              width: (MediaQuery.of(context).size.width - 50) / 2,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    image: AssetImage('assets/modelgrid1.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        CardMore(imgPath: 'assets/modelgrid2.jpeg')));
              },
              child: Hero(
                tag: 'assets/modelgrid2.jpeg',
                child: Container(
                  width: (MediaQuery.of(context).size.width - 100) / 2,
                  height: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage('assets/modelgrid2.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        CardMore(imgPath: 'assets/modelgrid3.jpeg')));
              },
              child: Hero(
                tag: 'assets/modelgrid3.jpeg',
                child: Container(
                  width: (MediaQuery.of(context).size.width - 100) / 2,
                  height: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage('assets/modelgrid3.jpeg'),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
