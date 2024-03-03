import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/profileScreen/thrdTwoStepVerification.dart';

import '../../controllers/widgets/primaryButton.dart';
import 'login and security.dart';

class secTwoStepVer extends StatefulWidget {
  const secTwoStepVer({super.key});

  @override
  State<secTwoStepVer> createState() => _secTwoStepVerState();
}

class _secTwoStepVerState extends State<secTwoStepVer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 24.w,right: 24.w),
          child: Column(
            children: [
              Container(
                width: 327.w,
                height: 24.h,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
                      },
                        child: Icon(CupertinoIcons.arrow_left,size: 24,)),
                    Padding(
                      padding:  EdgeInsets.only(left: 46.5.w),
                      child: Text(
                          "Two-step verification",
                        style: TextStyle(
                          fontFamily: "SF Pro Displa",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color.fromRGBO(17, 24, 39, 1)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 36.h,),
              Container(
                width: 327.w,
                height: 66.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 14.w,top: 12.h,bottom: 12.h),
                      child: Text(
                        "Secure your account with\ntwo-step verification",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "SF Pro Display"
                        ),

                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 70.w),
                      child: Icon(Icons.toggle_off,color: Colors.grey,size: 60,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h,),
              Container(
                width: 327.w,
                height: 85.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Select a verification method",
                      style: TextStyle(
                        fontFamily: "SF Pro Display",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(17, 24, 39, 1)
                      ),
                    ),
                   SizedBox(height: 8.h,),
                   Container(
                     width: 327.w,
                     height: 56.h,
                     child: TextFormField(
                         decoration: InputDecoration(
                           hintText: "Telephone number (SMS)",
                           suffixIcon: Icon(CupertinoIcons.chevron_down,size: 20,color: Colors.black,),
                           border:
                           OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                         ),

                     ),
                   )
                  ],
                ),
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 328.w,
                height: 80.h,
                child: Text(
                  "Note : Turning this feature will sign you out anywhere\nyou’re currently signed in. We will then require you to\nenter a verification code the first time you sign with a\nnew device or Joby mobile application.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SF Pro Display",
                    color: Color.fromRGBO(107, 114, 128, 1)
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 325.h),
                child: PrimaryButton(
                    title: 'Next',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Twostepverification2()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
