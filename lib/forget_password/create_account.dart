import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../utils/color_notifire.dart';


class Create_accout extends StatefulWidget {
  const Create_accout({Key? key}) : super(key: key);

  @override
  _Create_accoutState createState() => _Create_accoutState();
}

class _Create_accoutState extends State<Create_accout> {
  late ColorNotifire notifire;
  String dropdownValue = 'One';
  String dropValue = 'Male';
  String downValue = 'Age';
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: notifire.getprimerycolor,

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_sharp,
                      color: Color(0xfffffffd),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Create An Account",
                    style: TextStyle(fontFamily: 'Gilroy Medium',color: Color(0xfffffffd)),
                  ),
                  const Spacer(),

                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              DottedBorder(
                dashPattern: const [3, 3, 3, 3],
                color: const Color(0xff9733EE),
                borderType: BorderType.RRect,
                radius: const Radius.circular(200),
                padding: const EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  child: Opacity(
                    opacity: 0.2,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset("image/icon_camera.png"),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextField(
                    style: TextStyle(
                      color: notifire.getwhite,
                    ),
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        fillColor: notifire.getlightblue,
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy_Medium',
                          color: notifire.getgrey,
                          fontSize: 12.sp,
                        ),
                        hintText: "Full name",
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Image.asset("image/icon10.png",color: Colors.white,),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextField(
                    style: TextStyle(
                      color: notifire.getwhite,
                    ),
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        fillColor: notifire.getlightblue,
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy_Medium',
                          color: notifire.getgrey,
                          fontSize: 12.sp,
                        ),
                        hintText: "Phone number",
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Image.asset("image/icon15.png",color: Colors.white,),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: notifire.getlightblue,
                    borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child:  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13),
                        child: Image.asset("image/profile_2.png",color: Colors.white,),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: downValue,
                          icon:  Icon(Icons.arrow_drop_down,color: notifire.getwhite,),
                          onChanged: (String? newValue) {
                            setState(() {
                              downValue = newValue!;
                            });
                          },
                          items: <String>['Age', '12','13','14']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  Text(value,style: TextStyle(color: notifire.getgrey,fontSize: 15),),
                                  SizedBox(width: MediaQuery.of(context).size.width / 2,),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: notifire.getlightblue,
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child:  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                        child: Image.asset("image/icon22.png",color: Colors.white,),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: const Text("Select"),
                          value: dropValue,
                          icon:  Icon(Icons.arrow_drop_down,color: notifire.getwhite,),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropValue = newValue!;
                            });
                          },
                          items: <String>['Male', 'Female']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  Text(value,style: TextStyle(color: notifire.getgrey,fontSize: 15),),
                                  SizedBox(width: MediaQuery.of(context).size.width / 2.2,),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffDA22FF),
                        Color(0xff9733EE),
                        Color(0xffDA22FF),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontFamily: 'Gilroy Medium',
                          color: notifire.getwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
