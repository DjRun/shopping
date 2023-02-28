import 'package:flutter/material.dart';

class CardTopPart extends StatelessWidget {
  const CardTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 50,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/model1.jpeg",
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: _buildCenterPart(),
        ),
        Column(children: _buildRightPart),
      ],
    );
  }

  Widget _buildCenterPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Flexible(
              child: Text(
                "Daisy",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
          ],
        ),
        const Text(
          "34 min ago",
          style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat'),
        ),
      ],
    );
  }

  List<Widget> get _buildRightPart {
    return const [
      Icon(Icons.more_vert),
    ];
  }
}
