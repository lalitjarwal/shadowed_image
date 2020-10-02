import 'package:flutter/material.dart';
import 'package:shadowed_image/shadowed_image.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shadowed Image Example'),
        ),
        body: Center(
          child: ShadowedImage(
            image: Image.asset('assets/images/download.jpg'),
            blurRadius: 15,
            borderRadius: 10,
          ),
        ),
      ),
    );
  }
}