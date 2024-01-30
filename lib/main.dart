import 'package:bmi_calcul/widget/backgroun_right_shpae.dart';
import 'package:bmi_calcul/widget/background_left_shape.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,500,0,0),
              child: Column(
                children: [

                  RightShape(with_shap: 200,),
                  RightShape(with_shap: 110,),
                  RightShape(with_shap: 30,),

                  LeftShape(with_shap: 50,),
                  SizedBox(height: 15,),
                  LeftShape(with_shap: 200,),
                  SizedBox(height: 15,),
                  LeftShape(with_shap: 110,),
                
                  
                ],
              ),
            ),
          )),
    );
  }
}
