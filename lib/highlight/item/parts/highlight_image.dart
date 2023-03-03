import 'package:flutter/cupertino.dart';

Widget _buildImagepart(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, right: 8),
    child: Column(
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
          ],
        ),
      ],
    ),
  );
}
