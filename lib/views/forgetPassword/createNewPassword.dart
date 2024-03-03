import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/widgets/primaryButton.dart';
import 'chagedSuccesfully.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 19.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: SvgPicture.asset(
                          'assets/Icons/arrow-left.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      const Image(
                        image: AssetImage("assets/Images/logo.png"),
                        height: 20,
                        width: 81,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 39.h,
                  ),
                  child: SizedBox(
                    width: 327.w,
                    height: 40.h,
                    child: const Text(
                      "Create New Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 23.h,
                  ),
                  child: SizedBox(
                    width: 327.w,
                    height:110.h,
                    child: const Text(
                      "Set your new password so you can login and\nacces Jobsque",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(107, 114, 128, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 5.h, right: 24.w, left: 24.w, bottom: 12.h),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) => value!.isEmpty ? "Error" : null,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                          child: SvgPicture.asset(
                            'assets/Icons/lock.svg',
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.r)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 24.w,
                    left: 24.w,
                  ),
                  child: SizedBox(
                    width: 327.w,
                    height: 21.h,
                    child: const Text(
                      "Password must be at least 8 characters",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(107, 114, 128, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 35.h, right: 24.w, left: 24.w, bottom: 12.h),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) => value!.isEmpty ? "Error" : null,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                          child: SvgPicture.asset(
                            'assets/Icons/lock.svg',
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.r)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 24.w,
                    left: 24.w,
                  ),
                  child: SizedBox(
                    width: 327.w,
                    height: 21.h,
                    child: const Text(
                      "Both password must match",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(107, 114, 128, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 180.h),
                  child: PrimaryButton(
                      title: 'Request password reset',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ChangedSuccesfully()
                            )
                        );
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
