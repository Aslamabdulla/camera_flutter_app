import 'package:brocamp/screens/image_selecton_screen.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(CameraHome());
}

class CameraHome extends StatelessWidget {
  const CameraHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraImage(),
    );
  }
}
