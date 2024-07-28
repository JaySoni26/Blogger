import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:blogger/constants/colors.dart';
import 'package:blogger/constants/typos.dart';

class Viewer extends StatelessWidget {
  final String title;
  final Widget child;

  Viewer({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: ps_SemiBold.copyWith(color: kTextBlack),
          ),
          SizedBox(height: 18.h),
          Container(
            padding: EdgeInsets.all(40.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: kBlackBorder,
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(16.h),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
