import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyVideoVeiw extends StatefulWidget {
  const MyVideoVeiw({super.key});

  @override
  State<MyVideoVeiw> createState() => _MyVideoVeiwState();
}

class _MyVideoVeiwState extends State<MyVideoVeiw> {
  List<Widget> buttonlist = [
    Icon(Icons.download),
    Icon(Icons.share),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(buttonlist.length, (index) {
            return FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: (() {
                switch (index) {
                  case 0:
                    log("Download");
                    break;

                  case 1:
                    log("Share");
                    break;
                }
              }),
              child: buttonlist[index],
            );
          })),
    );
  }
}
