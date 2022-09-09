import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color basicColor = const Color.fromARGB(255, 246, 63, 63);
    return Scaffold(
      appBar: AppBar(
        title: const Text("عن التطبيق"),
        backgroundColor: basicColor,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/about.jpg"),
                    fit: BoxFit.contain)),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            width: double.infinity,
            child: const Text(
              "هذا التطبيق صمم خصيصاً للأطفال، وذلك لمساعدتهم على تعلم اسماء الحيوانات وأشكالها عن طريق معرفة اسم الحيوان من خلال الاجابة على اسئلة متعلقة بشكل هذا الحيوان وبعد الاجابة عن السؤال بشكل صحيح تظهر صورة الحيوان. \nعند الاجابة بشكل صحيح على كل صورة سيزيد تقييم اللاعب بمقدار 10 درجات وكل اجابة خاطئة تنقص من تقييم اللاعب بمقدار 5 درجات وعند الانتهاء من اللعب سيظهر تقييم اللاعب النهائي ومستواه في اللعبة.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
            ),
          )
        ],
      )),
    );
  }
}
