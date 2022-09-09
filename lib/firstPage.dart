import 'package:flutter/material.dart';

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
        leading: Icon(Icons.smart_toy_sharp),
        title: Text("تعلم عن طريق اللعب"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, bottom: 70),
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              "إختر اللعبة التي تريد لعبها",
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
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: selected == 1
                                  ? Colors.blue
                                  : Colors.red.shade400,
                              width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 150,
                      height: 150,
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
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: selected == 2
                                  ? Colors.blue
                                  : Colors.red.shade400,
                              width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 150,
                      height: 150,
                    )),
              ))
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 100),
            width: 135,
            alignment: Alignment.center,
            //margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
            child: MaterialButton(
              color: basicColor,
              onPressed: () {},
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: const Text("إبدأ اللعب",
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
          )
        ],
      )),
    );
  }
}
