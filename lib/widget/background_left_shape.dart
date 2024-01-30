import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  

  LeftShape({required double with_shap}){

    this.with_shap=with_shap;

  }

  double? with_shap;




  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: with_shap,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
