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
        Container(
          width: with_shap,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          ),
        )
      ],
    );
  }
}
