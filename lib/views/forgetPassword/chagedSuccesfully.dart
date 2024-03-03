import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/signInScreen/signInScreen.dart';

import '../../controllers/widgets/primaryButton.dart';

class ChangedSuccesfully extends StatefulWidget {
  const ChangedSuccesfully({super.key});

  @override
  State<ChangedSuccesfully> createState() => _ChangedSuccesfullyState();
}

class _ChangedSuccesfullyState extends State<ChangedSuccesfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Image.asset(
                "assets/Images/img_1.png",
                width: 173,
                height: 142,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password changed\n        succesfully!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Your password has been changed successfully,\nwe will let you know if there are more problems\n                           with your account"),
              Padding(
                padding: EdgeInsets.only(top: 200.h),
                child: PrimaryButton(
                    title: 'Open email app',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
