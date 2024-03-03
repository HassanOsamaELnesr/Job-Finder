import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/widgets/primaryButton.dart';
import 'frthTwoStepVerr.dart';
class Twostepverification2 extends StatefulWidget {
  const Twostepverification2({super.key});

  @override
  State<Twostepverification2> createState() => _TwostepverificationState();
}


class _TwostepverificationState extends State<Twostepverification2> {

  bool SeePassword=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 24.w,right: 24.w),
              child: Container(
                width: 327.w,
                height: 24.h,
                child: Row(
                  children: [
                    GestureDetector(

                        child: Icon(Icons.arrow_back,size: 24,),
                        onTap: () {
                          Navigator.pop(context);
                        }

                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 46.5.w,right: 70.5.w),
                      child: Text("Two-step verification",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 36.h),
              child: Container(
                width: 327.w,
                height: 120.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Add phone number",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),

                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 4.h),
                      child: Text("We will send a verification code to this number",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),

                      ),
                    ),
                Padding(
                  padding:  EdgeInsets.only(top: 16.h),
                  child: Container(
                    width: 327.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 16,top: 19,bottom: 19),
                          child: Image.asset('assets/Images/us.png',
                            width: 24,
                            height: 18,

                          ),
                        ),


                      ),



                    ),
                  ),
                ),




          ],
                ),
              ),
            ),



            Padding(
              padding:  EdgeInsets.only(top: 20.h),
              child: Container(
                width: 327.w,
                height: 85.h,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter your  password",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),

                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: SeePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: ' password',
                        prefixIcon: Icon(CupertinoIcons.lock),
                        suffixIcon: GestureDetector(
                          child: SeePassword ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye),
                          onTap: (){
                            setState(() {
                              SeePassword = !SeePassword;
                              print(SeePassword);
                            });
                          },

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 390.h),
              child: PrimaryButton(
                  title: 'Next',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const frthTwoStepVer()));
                  }),
            ),

          ],
        ),
      ),
    );
  }
}
