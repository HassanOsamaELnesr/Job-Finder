import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/homeScreen/homeScreen.dart';

import '../../controllers/widgets/bottomNavigationBar.dart';
import '../../controllers/widgets/primaryButton.dart';

class AccountCreated extends StatefulWidget {
  const AccountCreated({super.key});

  @override
  State<AccountCreated> createState() => _AccountCreatedState();
}

class _AccountCreatedState extends State<AccountCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Image.asset(
                "assets/Images/account.png",
                width: 173,
                height: 142,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Your account has been set up!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                "We have customized feeds according to your\n                               preferences",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: "SF Pro Display"),
              )),
              Padding(
                padding: EdgeInsets.only(top: 250.h),
                child: PrimaryButton(
                    title: 'Get Started',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavigationBarJobFinder()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
