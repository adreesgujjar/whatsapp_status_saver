import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:watsapp_saver/image.dart';
import 'package:watsapp_saver/navprovider.dart';
import 'package:watsapp_saver/video.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  List<Widget> pages = [
    MyImage(),
    MyVideo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, nav, child) {
      return Scaffold(
        body: pages[nav.currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: nav.currentindex,
          onTap: ((value) {
            nav.changeindex(value);
          }),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "image"),
            BottomNavigationBarItem(icon: Icon(Icons.video_file), label: "video"),
          ],
        ),
      );
    });
  }
}
