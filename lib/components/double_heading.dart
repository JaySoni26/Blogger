import 'package:blogger/constants/colors.dart';
import 'package:blogger/constants/typos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoubleHeading extends StatelessWidget {
  final String text1;
  final String text2;

  DoubleHeading({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text1,
          style: H1_SemiBold.copyWith(color: kTextBlack),
        ),
        SizedBox(
          height: 10.h, // Assuming you're using flutter_screenutil
        ),
        Text(
          text2,
          style: p_Regular.copyWith(color: kTextBlack_Light),
        ),
      ],
    );
  }
}
