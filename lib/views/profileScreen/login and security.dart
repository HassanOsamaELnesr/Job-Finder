import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/profileScreen/phoneNumScreen.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import 'Email.dart';
import 'TwoStepVerification.dart';
import 'changePassword.dart';
class loginandsecurity extends StatefulWidget {
  const loginandsecurity({super.key});

  @override
  State<loginandsecurity> createState() => _loginandsecurityState();
}

class _loginandsecurityState extends State<loginandsecurity> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 25.h),
          child: Column(
            children: [
              Container(
                width: 327.w,
                height: 34.h,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
          },
                        child: Icon(Icons.arrow_back,size: 24,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text("Login and security",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 34),
                child: Container(
                  width: 375.w,
                  height: 37.h,
                  color: Color.fromRGBO(244, 244, 245, 1),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 24,top: 8),
                    child: Text("Accont access",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(107, 114, 128, 1)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ListTile(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Email()));
                  },
                  leading: Text("Email address",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),

                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(cubit.profEmail.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),

                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PhoneNumScreen()));
                },
                leading: Text("Phone number",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),

                ),
                trailing: Icon(Icons.arrow_forward),
                ),
              ListTile(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const changepass()));
                },
                leading: Text("Change password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),

                ),
                trailing: Icon(Icons.arrow_forward),
              ),
          ListTile(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Twostepverification()));
            },
            leading: Text("Two-step verification",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),

            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Non active',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),

              ),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
              ListTile(
                leading: Text("Face ID",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),

                ),
                trailing: Icon(Icons.arrow_forward),
              ),




            ],
          ),
        ),
      ),
    );
    });
  }
}
