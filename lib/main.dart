import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watsapp_saver/image.dart';
import 'package:watsapp_saver/mainpage.dart';
import 'package:watsapp_saver/navprovider.dart';
import 'package:watsapp_saver/video.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "mainpage",
        routes: {
          "mainpage": (context) => MyMainPage(),
          "image": (context) => MyImage(),
          "video": (context) => MyVideo(),
        },
      ),
    ),
  );
}
