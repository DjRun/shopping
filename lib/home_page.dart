import 'package:flutter/material.dart';
import 'package:shopping/highlight_part.dart';
import 'package:shopping/card/card_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Material(
      //   color: Colors.white,
      //   child: TabBar(tabs: [
      //     Tab(
      //       icon: Icons.more,
      //       color: Colors.grey,
      //     )
      //   ]),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Shopping Application',
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: const [HighlightPart(), ItemsPart()],
      ),
    );
  }
}
