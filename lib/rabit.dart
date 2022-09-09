import 'package:flutter/material.dart';

class rabit extends StatefulWidget {
  String Ar_En;
  rabit(this.Ar_En, {Key? key}) : super(key: key);

  @override
  State<rabit> createState() => _rabitState();
}

class _rabitState extends State<rabit> {
  Color basicColor = const Color.fromARGB(255, 246, 63, 63);
  double score = 0.0;
  bool wrong = true;

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
                "${score}",
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
        ],
        backgroundColor: basicColor,
        title: widget.Ar_En == "ar"
            ? const Text("تعلم عن طريق اللعب")
            : const Text("Learn by playing"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 148, 39)),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: widget.Ar_En == "ar"
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  widget.Ar_En == "ar" ? "تلميحات :" : "Hints :",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 220, 148, 39)),
                  textDirection: widget.Ar_En == "ar"
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
                Text(
                  widget.Ar_En == "ar"
                      ? "- له اذنين طويلتين."
                      : "- It has two long ears.",
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 220, 148, 39)),
                  textDirection: widget.Ar_En == "ar"
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
                Text(
                  widget.Ar_En == "ar" ? "- يقفز كثيراً." : "- Jumps a lot.",
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 220, 148, 39)),
                  textDirection: widget.Ar_En == "ar"
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
                Text(
                  widget.Ar_En == "ar"
                      ? "- يعتبر من الحيوانات الأليفة."
                      : "- From pets.",
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 220, 148, 39)),
                  textDirection: widget.Ar_En == "ar"
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
                Text(
                  widget.Ar_En == "ar"
                      ? "- يحب أكل الجزر."
                      : "- Likes to eat carrots.",
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 220, 148, 39)),
                  textDirection: widget.Ar_En == "ar"
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: wrong
                        ? AssetImage("images/who.jpg")
                        : AssetImage("images/rabit.jpg"),
                    fit: BoxFit.cover),
                border:
                    Border.all(color: const Color.fromARGB(255, 220, 148, 39)),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Text(
              widget.Ar_En == "ar"
                  ? "ما هو اسم هذا الحيوان ؟"
                  : "What is the name of this animal ?",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromARGB(255, 220, 148, 39)),
              textDirection:
                  widget.Ar_En == "ar" ? TextDirection.rtl : TextDirection.ltr,
            ),
          ),
        ],
      )),
    );
  }
}
