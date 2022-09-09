import 'package:flutter/material.dart';

class firstPage extends StatefulWidget {
  firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  Color basicColor = const Color.fromARGB(255, 246, 63, 63);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: basicColor,
        leading: Icon(Icons.smart_toy_sharp),
        title: Text("تعلم عن طريق اللعب"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              "إختر اللعبة التي تريد لعبها",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }
}
