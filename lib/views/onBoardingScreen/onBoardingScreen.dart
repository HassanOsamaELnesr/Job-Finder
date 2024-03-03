import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';
import 'package:jobfinder_app/controllers/widgets/OnBoardingDots.dart';
import 'package:jobfinder_app/controllers/widgets/primaryButton.dart';
import 'package:jobfinder_app/views/signUpScreen/signUpScreen.dart';

import '../signInScreen/signInScreen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int? currentIndex = 0;
  PageController? _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 375.w,
                        height: 424.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                                image: AssetImage(JobFinderConstants
                                    .onBoardingImages[index]))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 17.h,
                              left: 24.w,
                            ),
                            child: const Image(
                              image: AssetImage("assets/Images/logo.png"),
                              height: 20,
                              width: 81,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                top: 17.h,
                                right: 24.w,
                              ),
                              child: InkWell(
                                onTap: () {
                                  print("WELCOME");
                                },
                                child: const Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      color: Color.fromRGBO(107, 114, 128, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 24.0.h, right: 24.w, left: 24.w, bottom: 12.h),
                    child: Text(
                      JobFinderConstants.onBoardingTitle[index],
                      style: const TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 32),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: 24.w, left: 24.w, bottom: 36.h),
                    child: Text(
                      JobFinderConstants.onBoardingDesc[index],
                      style: const TextStyle(
                          color: Color.fromRGBO(107, 114, 128, 1),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ),
                  OnBoardingDots(
                    currentIndex: currentIndex,
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  PrimaryButton(
                      title: 'Next',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      })
                ],
              ),
            );
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
