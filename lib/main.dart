import 'package:blogger/components/double_heading.dart';
import 'package:blogger/constants/colors.dart';
import 'package:blogger/constants/typos.dart';
import 'package:blogger/viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Blogger",
        home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Viewer(
                    title: 'DOUBLE HEADING',
                    child: DoubleHeading(
                      text1: 'Heading',
                      text2:
                          'A little Description here generally within 2 lines, maximum 3 lines.',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
