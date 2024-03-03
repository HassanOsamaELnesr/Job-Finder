import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/widgets/primaryButton.dart';
import 'login and security.dart';

class frthTwoStepVer extends StatefulWidget {
  const frthTwoStepVer({super.key});

  @override
  State<frthTwoStepVer> createState() => _frthTwoStepVerState();
}

class _frthTwoStepVerState extends State<frthTwoStepVer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 24.w,right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 73.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter the 6 digit code",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    ),),
                    SizedBox(height: 12.h,),
                    Text("Please confirm your account by entering the\nauthorization code sen to ****-****-7234",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),

                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 20.h),
                child: Container(
                  width: 327.w,
                  height: 44.h,
                  child: Row(
                    children: [
                      Container(
                        width: 44.w,
                        height: 44.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(

                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 123.w,
                height: 21.h,
                child: Row(
                  children: [
                    Text("Resend code ",style: TextStyle(color: Colors.grey[500]),),
                    Text("42s ",style: TextStyle(color: Colors.blueAccent),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 440.h),
                child: PrimaryButton(
                    title: 'Verify',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const loginandsecurity()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
