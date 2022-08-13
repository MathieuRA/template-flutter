import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gobet/utils/color_notifire.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../bottombar.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final int _numPages = 3;

  late ColorNotifire notifire;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff22c0ff) : const Color(0xff474e84),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return ScreenUtilInit(
      builder: () => Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff030A75),
                  Color(0xff000000),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 1.2,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Container(
                                color: Colors.transparent,
                                child: Image(
                                  image:
                                      const AssetImage('image/onbonding1.png'),
                                  fit: BoxFit.cover,
                                  height:
                                      MediaQuery.of(context).size.height / 1.5,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Your World of bets",
                                    style: TextStyle(
                                      fontFamily: 'Gilroy Bold',
                                      color: const Color(0xfffefeff),
                                      fontSize: 30.sp,
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  Text(
                                    "Bet on matches,compete with your",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "friends and win money!",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Image(
                                    image: const AssetImage(
                                        'image/onbonding2.1.png'),
                                    height: MediaQuery.of(context).size.height /
                                        1.5,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                                Image(
                                  image:
                                      const AssetImage('image/onbonding2.png'),
                                  height:
                                      MediaQuery.of(context).size.height / 1.5,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ],
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "It's time to Win",
                                    style: TextStyle(
                                      fontFamily: 'Gilroy Bold',
                                      color: const Color(0xfffefeff),
                                      fontSize: 30.sp,
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  Text(
                                    "With all the information you need,",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "you can start playing and winning.",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "Good Luck!",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Container(
                                color: Colors.transparent,
                                child: Image(
                                  image:
                                      const AssetImage('image/onbonding3.png'),
                                  fit: BoxFit.cover,
                                  height:
                                      MediaQuery.of(context).size.height / 1.5,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Win Glorious prizes!",
                                    style: TextStyle(
                                      color: const Color(0xfffefeff),
                                      fontSize: 30.sp,
                                      fontFamily: 'Gilroy Bold',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    "Ready to challenge players from all",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "over the world in the ultimate betting",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "contest? Bet for FREE on sports and eSports and",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "compete for 12 MILLION Bether in prizes!",
                                    style: TextStyle(
                                        fontFamily: 'Gilroy Medium',
                                        color: const Color(0xfffefeff),
                                        fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.fade,
                                            child: MainScreen()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      'Skip this',
                                      style: TextStyle(
                                          fontFamily: 'Gilroy Medium',
                                          color: Colors.white,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _pageController.nextPage(
                                        duration:
                                            const Duration(microseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xffDA22FF),
                                            Color(0xff9733EE),
                                            Color(0xffDA22FF),
                                          ],
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Next",
                                          style: TextStyle(
                                              fontFamily: 'Gilroy Medium',
                                              color: Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Align(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.fade,
                                            child: MainScreen()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      'Skip this',
                                      style: TextStyle(
                                          fontFamily: 'Gilroy Medium',
                                          color: Colors.white,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.fade,
                                            child: MainScreen()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xffDA22FF),
                                            Color(0xff9733EE),
                                            Color(0xffDA22FF),
                                          ],
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Start",
                                          style: TextStyle(
                                              fontFamily: 'Gilroy Medium',
                                              color: Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
