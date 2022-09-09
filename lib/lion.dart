import 'package:flutter/material.dart';

class lion extends StatefulWidget {
  String Ar_En;
  lion(this.Ar_En, {Key? key}) : super(key: key);

  @override
  State<lion> createState() => _lionState();
}

class _lionState extends State<lion> {
  Color basicColor = const Color.fromARGB(255, 246, 63, 63);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: basicColor,
        title: widget.Ar_En == "ar"
            ? const Text("تعلم عن طريق اللعب")
            : const Text("Learn by playing"),
      ),
    );
  }
}
