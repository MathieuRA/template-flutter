import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gobet/utils/color_notifire.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'second_screen.dart';

class Splesh_Screen extends StatefulWidget {
  const Splesh_Screen({Key? key}) : super(key: key);

  @override
  _Splesh_ScreenState createState() => _Splesh_ScreenState();
}

class _Splesh_ScreenState extends State<Splesh_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: SecondScreen())),
    );
  }

  late ColorNotifire notifire;
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: notifire.getprimerycolor,
        body: Container(
            color: notifire.getprimerycolor,
            child: Center(
                child: Container(color: Colors.transparent,
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset("image/batting app icon.png")))),
      ),
    );
  }
}
