import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardMore extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imgPath;

  CardMore({super.key, this.imgPath});
  @override
  State<CardMore> createState() => _CardMoreState();
}

class _CardMoreState extends State<CardMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Row(
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
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Colors.grey),
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
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Text(
                        '6000\$',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
