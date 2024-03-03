import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/signUpScreen/location.dart';

import '../../controllers/widgets/primaryButton.dart';

class WorkType extends StatefulWidget {
  const WorkType({super.key});

  @override
  State<WorkType> createState() => _WorkTypeState();
}

class _WorkTypeState extends State<WorkType> {
  bool state1=true;
  bool state2=true;
  bool state3=true;
  bool state4=true;
  bool state5=true;
  bool state6=true;
  // bool state=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24,top: 25,bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 327,
              height: 68,
              child: Text(
                "What type of work are you interested in?",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF Pro Display",
                    color: Color.fromRGBO(17, 24, 39, 1)
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              width: 327,
              height: 42,
              child: Text(
                "Tell us what you’re interested in so we can customise the app for your needs.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "SF Pro Displa",
                  color:Color.fromRGBO(115, 115, 121, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              state1=!state1;
                            });
                          },
                          child: Container(
                            width: 156,
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: state1? Color.fromRGBO(250, 250, 250,1): Color.fromRGBO(214, 228, 255, 1),
                              border: Border.all(color: state1? Color.fromRGBO(209, 213, 219,1): Color.fromRGBO(51, 102, 255, 1),
                                  width: 1.5
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/Images/first.png",
                                    width: 48,
                                    height: 48,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "UI/Ux Designer",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "SF Pro Display",
                                        color: Color.fromRGBO(17, 24, 39, 1)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child:   GestureDetector(
                            onTap:(){
                              setState(() {
                                state2=!state2;
                              });
                            },
                            child: Container(
                              width: 156,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: state2? Color.fromRGBO(250, 250, 250,1): Color.fromRGBO(214, 228, 255, 1),
                                border: Border.all(color: state2? Color.fromRGBO(209, 213, 219,1): Color.fromRGBO(51, 102, 255, 1),
                                    width: 1.5
                                ),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/Images/second.png",
                                      width: 48,
                                      height: 48,
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Ilustrator Designer",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SF Pro Display",
                                          color: Color.fromRGBO(17, 24, 39, 1)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              state3=!state3;
                            });
                          },
                          child: Container(
                            width: 156,
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: state3? Color.fromRGBO(250, 250, 250,1): Color.fromRGBO(214, 228, 255, 1),
                              border: Border.all(color: state3? Color.fromRGBO(209, 213, 219,1): Color.fromRGBO(51, 102, 255, 1),
                                  width: 1.5
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/Images/third.png",
                                    width: 48,
                                    height: 48,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Developer",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "SF Pro Display",
                                        color: Color.fromRGBO(17, 24, 39, 1)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child:   GestureDetector(
                            onTap:(){
                              setState(() {
                                state4=!state4;
                              });
                            },
                            child: Container(
                              width: 156,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: state4? Color.fromRGBO(250, 250, 250,1): Color.fromRGBO(214, 228, 255, 1),
                                border: Border.all(color: state4? Color.fromRGBO(209, 213, 219,1): Color.fromRGBO(51, 102, 255, 1),
                                    width: 1.5
                                ),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/Images/fourth.png",
                                      width: 48,
                                      height: 48,
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Management",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SF Pro Display",
                                          color: Color.fromRGBO(17, 24, 39, 1)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              state5=!state5;
                            });
                          },
                          child: Container(
                            width: 156,
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: state5? Color.fromRGBO(250, 250, 250,1): Color.fromRGBO(214, 228, 255, 1),
                              border: Border.all(color: state5? Color.fromRGBO(209, 213, 219,1): Color.fromRGBO(51, 102, 255, 1),
                                  width: 1.5
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/Images/fifth.png",
                                    width: 48,
                                    height: 48,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Information Technology",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "SF Pro Display",
                                        color: Color.fromRGBO(17, 24, 39, 1)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child:   GestureDetector(
                            onTap:(){
                              setState(() {
                                state6=!state6;
                              });
                            },
                            child: Container(
                              width: 156,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: state6? Color.fromRGBO(250, 250, 250,1): Color.fromRGBO(214, 228, 255, 1),
                                border: Border.all(color: state6? Color.fromRGBO(209, 213, 219,1): Color.fromRGBO(51, 102, 255, 1),
                                    width: 1.5
                                ),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/Images/sixth.png",
                                      width: 48,
                                      height: 48,
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Research and Analytics",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SF Pro Display",
                                          color: Color.fromRGBO(17, 24, 39, 1)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 55.h),
              child: PrimaryButton(
                  title: 'Next',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const Location()
                        )
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
