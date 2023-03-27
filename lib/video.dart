import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:watsapp_saver/imageveiw.dart';
import 'package:watsapp_saver/videoveiw.dart';

class MyVideo extends StatefulWidget {
  const MyVideo({super.key});

  @override
  State<MyVideo> createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Scaffold(
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
            ),
            children: List.generate(
              10,
              (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => MyVideoVeiw(),
                      ),
                    );
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.blue,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
