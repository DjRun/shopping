import 'package:flutter/material.dart';
import 'package:shopping/card/card_more/card_more_details.dart';

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
                  const CardMoreDetails(),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: const Text(
                          '6000\$',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.brown,
                          child: const Center(
                              child: Icon(Icons.arrow_forward_ios)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Center(
                    child: Text(
                      'LAMINATED',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
