import 'package:flutter/material.dart';

class lion extends StatefulWidget {
  String Ar_En;
  double score;
  lion(this.Ar_En, this.score, {Key? key}) : super(key: key);

  @override
  State<lion> createState() => _lionState();
}

class _lionState extends State<lion> {
  Color basicColor = const Color.fromARGB(255, 246, 63, 63);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: const Icon(
            Icons.star,
            color: Colors.amber,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 15),
            alignment: Alignment.center,
            child: Text(
              "${widget.score}",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
      ],
      backgroundColor: basicColor,
      title: widget.Ar_En == "ar"
          ? const Text("تعلم عن طريق اللعب")
          : const Text("Learn by playing"),
    ));
  }
}
