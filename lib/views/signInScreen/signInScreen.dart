import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/States.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/cubit.dart';
import 'package:jobfinder_app/controllers/widgets/bottomNavigationBar.dart';
import 'package:jobfinder_app/controllers/widgets/primaryButton.dart';

import '../forgetPassword/forgetPassword.dart';
import '../signUpScreen/signUpScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
        builder: (context, state) {
          var cubit = AuthCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 24.w, right: 24.w, top: 19.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                              image: AssetImage("assets/Images/logo.png"),
                              height: 20,
                              width: 81,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 39.h,
                        ),
                        child: SizedBox(
                          width: 327.w,
                          height: 40.h,
                          child: const Text(
                            "Login",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SF Pro Display',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.h,
                        ),
                        child: SizedBox(
                          width: 327.w,
                          height: 21.h,
                          child: const Text(
                            "Please login to find your dream job",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(107, 114, 128, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF Pro Display',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 44.h, right: 24.w, left: 24.w),
                        child: TextFormField(
                          controller: AuthCubit.emailController,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    top: 18.h,
                                    bottom: 18.h,
                                    left: 16.w,
                                    right: 12.w),
                                child: SvgPicture.asset(
                                  'assets/Icons/profile.svg',
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              ),
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 16.h, right: 24.w, left: 24.w, bottom: 12.h),
                        child: TextFormField(
                          obscureText: true,
                          controller: AuthCubit.password,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) => value!.isEmpty ? "Error" : null,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    top: 18.h,
                                    bottom: 18.h,
                                    left: 16.w,
                                    right: 12.w),
                                child: SvgPicture.asset(
                                  'assets/Icons/lock.svg',
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              ),
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 16.h,
                              width: 16.w,
                              child: Checkbox(
                                  side: const BorderSide(strokeAlign: 0.2),
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 6.w,
                              ),
                              child: const Text(
                                "Remember me",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(107, 114, 128, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF Pro Display',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 85.w, right: 24.w),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const ForgetPassword()));
                                },
                                child: const Text(
                                  "Forget Password?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 102, 255, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'SF Pro Display',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 87.w, right: 6.w, top: 40.h, bottom: 24.h),
                        child: Row(
                          children: [
                            const Text(
                              "Dont’t have an account?",
                              style: TextStyle(
                                color: Color.fromRGBO(107, 114, 128, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const SignUpScreen()));
                              },
                              child: const Text(
                                "Register",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(51, 102, 255, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SF Pro Display',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: PrimaryButton(
                            title: 'Login',
                            onTap: () async {
                              try {
                                print('LoggedIn');
                                await cubit.loginUser(
                                  context,
                                  password: AuthCubit.password.text,
                                  email: AuthCubit.emailController.text,
                                );
                                await cubit.suggestJob(context);
                                await cubit.getAllJobs(context);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BottomNavigationBarJobFinder()));
                              } catch (error) {
                                print('Error: $error');
                                print('Failed');
                              }
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 24.h),
                        child: const Text(
                          "Or Login With Account",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(107, 114, 128, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 24.h),
                          child: Padding(
                            padding: EdgeInsets.only(left: 24.w, right: 24.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Image(
                                      image: AssetImage(
                                          'assets/Images/google.png')),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Image(
                                      image: AssetImage(
                                          'assets/Images/facebook.png')),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
