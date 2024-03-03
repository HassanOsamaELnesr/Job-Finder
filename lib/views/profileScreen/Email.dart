import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/widgets/primaryButton.dart';
import 'login and security.dart';
class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
                     onTap: () {
                       Navigator.pop(context);
                     },
                  child: Icon(Icons.arrow_back,size: 24,),


              ),
              Padding(
                padding:  EdgeInsets.only(left: 78.w),
                child: Text("Email address",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
              ),



              ],
                  ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 44.h),
                child: Container(
                  width: 327.w,
                  height: 120.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Main e-mail address",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),

                      ),

                        Padding(
                          padding:  EdgeInsets.only(top: 8.h),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              hintText: 'Write your email...',
                              prefixIcon: Icon(Icons.email_outlined),

                            ),

                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 490.h),
                child: PrimaryButton(
                    title: 'Save',
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
