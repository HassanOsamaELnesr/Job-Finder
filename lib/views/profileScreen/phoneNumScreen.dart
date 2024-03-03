import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/widgets/primaryButton.dart';
import 'login and security.dart';

class PhoneNumScreen extends StatefulWidget {
  const PhoneNumScreen({super.key});

  @override
  State<PhoneNumScreen> createState() => _PhoneNumScreenState();
}

class _PhoneNumScreenState extends State<PhoneNumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 24.w,right: 24.w,top: 60.h),
        child: Column(
          children: [
            Container(
              width: 327.w,
              height: 24.h,
              child: Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,
                        size: 24,)
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 90.5.w),
                    child: Text("Experience",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: "SF Pro Display"
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 44.h,),
            Container(
              width: 327.w,
              height: 86.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Main phone number",
                    style: TextStyle(
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(17, 24, 39, 1)
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 8.h),
                    child: Container(
                      width: 327.w,
                      height: 56.h,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding:  EdgeInsets.only(left: 16.w,top: 19.h,bottom: 19.h,right: 20.w),
                              child: Image.asset('assets/Images/us.png',
                                width: 24.w,
                                height: 18.h,
                              ),
                            ),
                            hintText: "012312323",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: 327.w,
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Use the phone number to reset your\npassword",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SF Pro Display",
                    color: Color.fromRGBO(107, 114, 128, 1)
                  ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 79.w),
                    child: Icon(Icons.toggle_on,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 451.h),
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
    );
  }
}
