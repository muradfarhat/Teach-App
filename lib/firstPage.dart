import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teachapp/about.dart';
import 'package:teachapp/lion.dart';

class firstPage extends StatefulWidget {
  firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  Color basicColor = const Color.fromARGB(255, 246, 63, 63);

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: basicColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => about()),
              );
            },
            icon: const Icon(Icons.smart_toy_sharp)),
        title: const Text(
          "تعلم عن طريق اللعب",
          textDirection: TextDirection.rtl,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, bottom: 70),
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              "إختر اللغة التي تريد ان تبدأ اللعبة بها",
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                height: 200,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.3),
                                  BlendMode.multiply),
                              image: const AssetImage("images/anim2.jpg"),
                              fit: BoxFit.contain),
                          border: Border.all(
                              color: selected == 1
                                  ? Colors.blue
                                  : Colors.red.shade400,
                              width: 5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      width: 150,
                      height: 150,
                      child: const Text(
                        "English",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )),
              )),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                height: 200,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        selected = 2;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.3),
                                  BlendMode.multiply),
                              image: const AssetImage("images/anim1.jpg"),
                              fit: BoxFit.contain),
                          border: Border.all(
                              color: selected == 2
                                  ? Colors.blue
                                  : Colors.red.shade400,
                              width: 5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      width: 150,
                      height: 150,
                      child: const Text(
                        "العربية",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 100, bottom: 20),
            width: 135,
            alignment: Alignment.center,
            //margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
            child: MaterialButton(
              height: 50,
              color: basicColor,
              onPressed: () {
                if (selected == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lion("en")),
                  );
                } else if (selected == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lion("ar")),
                  );
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "حسناً",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(color: basicColor),
                                ))
                          ],
                          title: Row(
                            children: [
                              const Expanded(
                                  flex: 4,
                                  child: Text(
                                    "يجب ان تختار لغة قبل اللعب",
                                    textDirection: TextDirection.rtl,
                                  )),
                              Expanded(
                                  child: Icon(
                                Icons.warning,
                                color: basicColor,
                              )),
                            ],
                          ),
                        );
                      });
                }
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: const Text("إبدأ اللعب",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => about()),
                  );
                },
                child: Text(
                  "عن التطبيق",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: basicColor),
                )),
          )
        ],
      )),
    );
  }
}
