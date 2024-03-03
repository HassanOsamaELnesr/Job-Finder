import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/forgetPassword/createNewPassword.dart';

import '../../controllers/widgets/primaryButton.dart';

class CheckYourMail extends StatefulWidget {
  const CheckYourMail({super.key});

  @override
  State<CheckYourMail> createState() => _CheckYourMailState();
}

class _CheckYourMailState extends State<CheckYourMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Image.asset("assets/Images/img.png",
              width: 173,
              height: 142,
              ),
              SizedBox(height: 20,),
              Text("Check Your Mail",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                fontFamily: 'SF Pro Display',
              ),
              ),
              SizedBox(height: 20,),
              Text("We have sent a reset password to your email\n                                address"),
              Padding(
                padding: EdgeInsets.only(top: 250.h),
                child: PrimaryButton(
                    title: 'Open email app',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const CreateNewPassword())
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
