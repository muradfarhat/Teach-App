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

  String arabicAnswer = "ارنب";
  String arabicAnswer2 = "أرنب";
  String englishAnswer = "rabbit";

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
                hints("- له اذنين طويلتين.", "- It has two long ears."),
                hints("- يقفز كثيراً.", "- Jumps a lot."),
                hints("- يعتبر من الحيوانات الأليفة.", "- From pets."),
                hints("- يحب أكل الجزر.", "- Likes to eat carrots."),
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
                        ? const AssetImage("images/who.jpg")
                        : const AssetImage("images/rabit.jpg"),
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 15),
            child: widget.Ar_En == "ar"
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _textFieldArabic(first: false, last: true),
                      _textFieldArabic(first: false, last: false),
                      _textFieldArabic(first: false, last: false),
                      _textFieldArabic(first: true, last: false),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _textField(first: true, last: false),
                      _textField(first: false, last: false),
                      _textField(first: false, last: false),
                      _textField(first: false, last: false),
                      _textField(first: false, last: false),
                      _textField(first: false, last: true),
                    ],
                  ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 25, left: 25, bottom: 15),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    height: 50,
                    onPressed: () {
                      if (wrong) {
                        showFaildSnackBarMSG();
                      } else {
                        showSuccessSnackBarMSG();
                      }
                    },
                    color: Colors.green,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              widget.Ar_En == "ar" ? "تأكد" : "Check",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    height: 50,
                    onPressed: () {
                      if (wrong) {
                        cannotMove();
                      }
                    },
                    color: basicColor,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              widget.Ar_En == "ar"
                                  ? "السؤال التالي"
                                  : "Next Question",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ],
      )),
    );
  }

/*********************** Start Functions ********************************* */
  Text hints(String arabic, String english) {
    return Text(
      widget.Ar_En == "ar" ? arabic : english,
      style: const TextStyle(
          fontSize: 16, color: Color.fromARGB(255, 220, 148, 39)),
      textDirection:
          widget.Ar_En == "ar" ? TextDirection.rtl : TextDirection.ltr,
    );
  }

  _textField({required bool first, last}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color.fromARGB(255, 220, 148, 39)),
          keyboardType: TextInputType.text,
          maxLength: 1,
          decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2, color: Color.fromARGB(255, 220, 148, 39)),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 2, color: basicColor))),
        ),
      ),
    );
  }

  _textFieldArabic({required bool first, last}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          //autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).previousFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).nextFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color.fromARGB(255, 220, 148, 39)),
          keyboardType: TextInputType.text,
          maxLength: 1,
          decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2, color: Color.fromARGB(255, 220, 148, 39)),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 2, color: basicColor))),
        ),
      ),
    );
  }

  showSuccessSnackBarMSG() {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.green.withOpacity(0.7),
      content: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text(
            widget.Ar_En == "ar"
                ? "الاجابة صحيحة +10 نجوم"
                : "Correct Answer +10 Stars",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(20),
    ));
  }

  showFaildSnackBarMSG() {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.red.withOpacity(0.7),
      content: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.close,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text(
            widget.Ar_En == "ar"
                ? "الاجابة خاطئة -5 نجوم"
                : "Wrong Answer -5 Stars",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(20),
    ));
  }

  cannotMove() {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Color.fromARGB(255, 127, 110, 109).withOpacity(0.7),
      content: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.warning,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text(
            widget.Ar_En == "ar"
                ? "أجب على هذا السؤال بشكل صحيح اولاً"
                : "Answer this question correctly first",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(20),
    ));
  }
/*********************** End Functions *********************************** */
}
