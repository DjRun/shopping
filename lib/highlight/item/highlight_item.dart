import 'package:flutter/material.dart';

class HighlightItem extends StatelessWidget {
  final String imageTitle;
  final String imagePath;
  const HighlightItem(
      {super.key, required this.imageTitle, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(children: [_buildImagepart(context), _buildTitle(context)]);
  }

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

  Widget _buildTitle(BuildContext context) {
    return Container(
      height: 30,
      width: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.brown),
      child: const Center(
        child: Text('follow',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
