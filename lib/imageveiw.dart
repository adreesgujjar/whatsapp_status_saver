import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyImageVeiw extends StatefulWidget {
  const MyImageVeiw({super.key});

  @override
  State<MyImageVeiw> createState() => _MyImageVeiwState();
}

class _MyImageVeiwState extends State<MyImageVeiw> {
  List<Widget> buttonlist = [
    Icon(Icons.download),
    Icon(Icons.print),
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
                    log("Print");
                    break;
                  case 2:
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
