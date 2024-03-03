import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/profileScreen/twoStepVer.dart';

import '../../controllers/widgets/primaryButton.dart';

class Twostepverification extends StatefulWidget {
  const Twostepverification({super.key});

  @override
  State<Twostepverification> createState() => _TwostepverificationState();
}


class _TwostepverificationState extends State<Twostepverification> {
  bool SeePassword=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                padding:  EdgeInsets.only(top: 36.h,left: 24.w,right: 24.w),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey),



                  ),
                  width: 327.w,
                  height: 66.h,
                  child: ListTile(
                    leading: Text("Secure your account \nwith two-step verification",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    ),
                    trailing: GestureDetector(child:SeePassword ? Icon(Icons.toggle_off,
                    size: 44,
                    ) : Icon(Icons.toggle_on,
                    size: 44,
                    )),
                    onTap: (){
                      setState(() {
                        SeePassword = !SeePassword;
                        print(SeePassword);
                      });
                    },


                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 32.h,left: 24.w,right: 24.w),
                child: Container(
                  width: 327.w,
                  height: 90.h,
                  child: ListTile(
                    leading: CircleAvatar(child: Image.asset("assets/Images/lock.png"),
                      backgroundColor: Color.fromRGBO(214, 228, 255, 1),
                      radius: 30,

                  ),
                   title: Text("Two-step verification provides additional security by asking for a verification code every time you log in on another device."),


                  ),


                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 32.h,left: 24.w,right: 24.w),
                child: Container(
                  width: 327.w,
                  height: 90.h,
                  child: ListTile(
                    leading: CircleAvatar(child: Image.asset("assets/Images/printer.png"),
                      backgroundColor: Color.fromRGBO(214, 228, 255, 1),
                      radius: 30,

                    ),
                    title: Text("Adding a phone number or using an authenticator will help keep your account safe from harm."),


                  ),


                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300.h),
                child: PrimaryButton(
                    title: 'Next',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secTwoStepVer()));
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
