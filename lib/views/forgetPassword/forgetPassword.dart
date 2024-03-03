import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/widgets/primaryButton.dart';
import '../signInScreen/signInScreen.dart';
import 'checkYourMail.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                      "Reset Password",
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
                    height: 110.h,
                    child: const Text(
                      "Enter the email address you used when you\njoined and we’ll send you instructions to reset\nyour password.",
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
                  padding: EdgeInsets.only(top: 16.h, right: 24.w, left: 24.w),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                          child: SvgPicture.asset(
                            'assets/Icons/sms.svg',
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 87.w, right: 6.w, top: 280.h, bottom: 5.h),
                  child: Row(
                    children: [
                      const Text(
                        "You remember your password",
                        style: TextStyle(
                          color: Color.fromRGBO(107, 114, 128, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        },
                        child: const Text(
                          "Login",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(51, 102, 255, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: PrimaryButton(
                      title: 'Request password reset',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CheckYourMail()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
