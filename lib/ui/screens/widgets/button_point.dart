import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';


class PointButton extends StatelessWidget {
  const PointButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      width: 19,
      height: 19,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: TestColor.whiteColor,
          border: const Border(
            top:    BorderSide(color: TestColor.greyColor2, width: 2.0),
            bottom: BorderSide(color: TestColor.greyColor2, width: 2.0),
            left:   BorderSide(color: TestColor.greyColor2, width: 2.0),
            right:  BorderSide(color: TestColor.greyColor2, width: 2.0),
          ),
      ),
      child: Container(

        width: 9,
        height: 9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: TestColor.greyColor2,

        ),
      ),
    );
  }
}
