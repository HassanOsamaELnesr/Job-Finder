import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/States.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/cubit.dart';
import 'package:jobfinder_app/controllers/widgets/bottomNavigationBar.dart';
import 'package:jobfinder_app/controllers/widgets/primaryButton.dart';
import 'package:jobfinder_app/views/signInScreen/signInScreen.dart';
import 'package:jobfinder_app/views/signUpScreen/workType.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const SignInScreen()));
                              },
                              child: SizedBox(
                                child: SvgPicture.asset(
                                  'assets/Icons/arrow-left.svg',
                                  height: 24.h,
                                  width: 24.w,
                                ),
                              ),
                            ),
                            const Image(
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
                            "Create Account",
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
                            "Please create an account to find your dream job",
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
                          controller: AuthCubit.nameController,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                top: 18.h,
                                bottom: 18.h,
                                left: 16.w,
                                right: 12.w,
                              ),
                              child: SvgPicture.asset(
                                'assets/Icons/profile.svg',
                                height: 20.h,
                                width: 20.w,
                              ),
                            ),
                            labelText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.r),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 16.h, right: 24.w, left: 24.w),
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
                                  'assets/Icons/sms.svg',
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
                          right: 24.w,
                          left: 24.w,
                        ),
                        child: SizedBox(
                          width: 327.w,
                          height: 21.h,
                          child: const Text(
                            "Password must be at least 8 characters",
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
                        padding: EdgeInsets.only(
                            left: 87.w, right: 6.w, top: 40.h, bottom: 24.h),
                        child: Row(
                          children: [
                            const Text(
                              "Already have an account?",
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
                                            const SignInScreen()));
                              },
                              child: const Text(
                                "Login",
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
                          title: 'Create account',
                          onTap: () async {
                            try {
                              cubit.CreateUser(
                                context,
                                password: AuthCubit.password.text,
                                email: AuthCubit.emailController.text,
                                name: AuthCubit.nameController.text,
                              );
                              await cubit.suggestJob(context);
                              await cubit.getAllJobs(context);


                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WorkType()));
                            } catch (error) {
                              print('Error: $error');
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 24.h),
                        child: const Text(
                          "Or Sign up With Account",
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
                                    image:
                                        AssetImage('assets/Images/google.png')),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Image(
                                    image: AssetImage(
                                        'assets/Images/facebook.png')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
