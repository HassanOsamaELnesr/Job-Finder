import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/States.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/cubit.dart';
import 'package:jobfinder_app/controllers/widgets/bottomNavigationBar.dart';
import 'package:jobfinder_app/loading.dart';
import 'package:jobfinder_app/views/onBoardingScreen/onBoardingScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? token;
  bool? status;

  Future init(context) async {
    AuthCubit.get(context).GettingUserData();
    SharedPreferences userData = await SharedPreferences.getInstance();

    token = userData.getString('token');
    status = userData.getBool('status');

    print('Token mn el storage: $token');
    print('status mn el storage: $status');

    // Function to check the existence of the token and the status ex. (if status == true => Login, else: Login)

    Future.delayed(const Duration(seconds: 5)).then(
      (value) {
        if (status == true) {
          print('Auto Login');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomNavigationBarJobFinder(),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnBoarding(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    init(context);
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return const Scaffold(
              body: Center(
            child: Loading(),
          ));
        });
  }
}
