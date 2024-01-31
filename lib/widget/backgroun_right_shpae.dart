import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  RightShape({required double with_shap}) {
    this.with_shap = with_shap;
  }

  double? with_shap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("شاخص منفی",style: TextStyle(color: Colors.red),),
        SizedBox(width: 5,),
        Container(
          width: with_shap,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),),
          ),
        ),
        
      ],
    );
  }
}
