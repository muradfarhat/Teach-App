import 'package:flutter/material.dart';
import 'package:teachapp/firstPage.dart';
import 'package:teachapp/rabit.dart';

class finalPage extends StatefulWidget {
  String Ar_En;
  double score;
  finalPage(this.Ar_En, this.score, {Key? key}) : super(key: key);

  @override
  State<finalPage> createState() => _finalPageState();
}

class _finalPageState extends State<finalPage> {
  Color basicColor = const Color.fromARGB(255, 246, 63, 63);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => firstPage()),
              );
            },
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            )),
        backgroundColor: basicColor,
        title: widget.Ar_En == "ar"
            ? const Text("تعلم عن طريق اللعب")
            : const Text("Learn by playing"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(25),
            child: Text(
              widget.Ar_En == "ar"
                  ? "تهانينا، لقد وصلت الى النهاية بعد الاجابة عن كل الاسئلة بشكلٍ صحيح."
                  : "Congratulations, you have reached the end after answering all the questions correctly.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textDirection:
                  widget.Ar_En == "ar" ? TextDirection.rtl : TextDirection.ltr,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            margin: const EdgeInsets.only(bottom: 45),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 60,
                  ),
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "${widget.score}",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: widget.score >= 80.0
                            ? Colors.green
                            : widget.score >= 40.0 && widget.score < 80.0
                                ? Colors.orange
                                : Colors.red),
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Text(
                    " / 120",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ))
              ],
            ),
          ),
          Visibility(
            visible: widget.Ar_En == "ar" ? true : false,
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 45),
              child: Text(
                widget.score >= 80.0
                    ? "ممتاز"
                    : widget.score >= 40.0 && widget.score < 80.0
                        ? "متوسط"
                        : "ضعيف",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: widget.score >= 80.0
                        ? Colors.green
                        : widget.score >= 40.0 && widget.score < 80.0
                            ? Colors.orange
                            : Colors.red),
              ),
            ),
          ),
          Visibility(
            visible: widget.Ar_En == "ar" ? false : true,
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 45),
              child: Text(
                widget.score >= 80.0
                    ? "Excellent"
                    : widget.score >= 40.0 && widget.score < 80.0
                        ? "Medium"
                        : "Weakly",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: widget.score >= 80.0
                        ? Colors.green
                        : widget.score >= 40.0 && widget.score < 80.0
                            ? Colors.orange
                            : Colors.red),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: widget.Ar_En == "ar" ? 200 : 160,
            alignment: Alignment.center,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              height: 50,
              color: basicColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          rabit(widget.Ar_En == "ar" ? "ar" : "en")),
                );
              },
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15),
                    child: Text(
                        widget.Ar_En == "ar"
                            ? "المحاولة مرة اخرى"
                            : "Play Again",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                  const Icon(
                    Icons.replay,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
