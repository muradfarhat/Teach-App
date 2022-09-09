import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color basicColor = const Color.fromARGB(255, 246, 63, 63);
    return Scaffold(
      appBar: AppBar(
        title: Text("عن التطبيق"),
        backgroundColor: basicColor,
      ),
    );
  }
}
