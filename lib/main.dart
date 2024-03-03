import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/cubit.dart';
import 'package:jobfinder_app/theme.dart';
import 'package:jobfinder_app/views/appliedScreen/appliedScreen.dart';
import 'package:jobfinder_app/views/completeProfile/completeProfile.dart';
import 'package:jobfinder_app/views/completeProfile/education.dart';
import 'package:jobfinder_app/views/completeProfile/experience.dart';
import 'package:jobfinder_app/views/homeScreen/homeScreen.dart';
import 'package:jobfinder_app/views/jobDetails/jobDetails.dart';
import 'package:jobfinder_app/views/messageScreen/messageScreen.dart';
import 'package:jobfinder_app/views/onBoardingScreen/onBoardingScreen.dart';
import 'package:jobfinder_app/views/profileScreen/Email.dart';
import 'package:jobfinder_app/views/profileScreen/Notification.dart';
import 'package:jobfinder_app/views/profileScreen/TwoStepVerification.dart';
import 'package:jobfinder_app/views/profileScreen/changePassword.dart';
import 'package:jobfinder_app/views/profileScreen/editProfile.dart';
import 'package:jobfinder_app/views/profileScreen/frthTwoStepVerr.dart';
import 'package:jobfinder_app/views/profileScreen/language.dart';
import 'package:jobfinder_app/views/profileScreen/login%20and%20security.dart';
import 'package:jobfinder_app/views/profileScreen/phoneNumScreen.dart';
import 'package:jobfinder_app/views/profileScreen/portfolio.dart';
import 'package:jobfinder_app/views/profileScreen/profileScreen.dart';
import 'package:jobfinder_app/views/profileScreen/thrdTwoStepVerification.dart';
import 'package:jobfinder_app/views/profileScreen/twoStepVer.dart';
import 'package:jobfinder_app/views/savedScreen/savedScreen.dart';
import 'package:jobfinder_app/views/signInScreen/signInScreen.dart';
import 'package:jobfinder_app/views/signUpScreen/signUpScreen.dart';
import 'package:jobfinder_app/views/signUpScreen/workType.dart';
import 'package:jobfinder_app/views/splashScreen/splashScreen.dart';

import 'controllers/widgets/bottomNavigationBar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 813),
      ensureScreenSize: true,
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit()..GettingUserData(),
          ),

        ],
        child: MaterialApp(
          title: 'JobFinder',
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          home: const OnBoarding(),
        ),
      ),
    );
  }
}
