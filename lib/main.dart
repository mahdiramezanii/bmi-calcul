import 'package:bmi_calcul/widget/backgroun_right_shpae.dart';
import 'package:bmi_calcul/widget/background_left_shape.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final wightController = TextEditingController();
  final hightController = TextEditingController();

  double resultBmi = 0.00;
  String resultTxt = "";
  double withGood=100;
  double withBad=100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "dana"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              " تو چنده؟ BMI",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      child: TextField(
                        controller: wightController,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "وزن",
                          hintStyle: TextStyle(
                            color: Colors.red.withOpacity(0.5),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        controller: hightController,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                       border: InputBorder.none,
                          hintText: "قد",
                          hintStyle: TextStyle(
                            color: Colors.red.withOpacity(0.5),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    setState(() {
                      final w = double.parse(wightController.text);
                      final h = double.parse(hightController.text);

                      resultBmi = w / (h * h);

                      setState(() {
                        if (resultBmi > 25) {
                          resultTxt = "شما اضافه وزن دارید";
                          withBad=200;
                          withGood=100;
                        } else if (resultBmi >= 18 && resultBmi <= 25) {
                          resultTxt = "وزن شما نرمال است";
                          withBad=100;
                          withGood=200;
                        } else {
                          resultTxt = "وزن شما از حد نرمال کمتر است";
                          withBad=200;
                          withGood=200;
                        }
                      });
                    });
                  },
                  child: Text(
                    "! محاسبه کن",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  "${resultBmi.toStringAsFixed(3)}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 10),
                Text(
                  "${resultTxt}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.red),
                ),
                
                SizedBox(height: 60),
                RightShape(with_shap: withBad),
                SizedBox(height: 10),
                LeftShape(with_shap: withGood),
              ],
            ),
          )),
    );
  }

  double CalBmi(double h, double w) {
    var result = h / (w * w);
    return result;
  }
}
