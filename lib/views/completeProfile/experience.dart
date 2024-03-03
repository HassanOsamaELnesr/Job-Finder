import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/primaryButton.dart';
import 'completeProfile.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w,top: 60.h),
              child: Container(
                width: 327.w,
                height: 24.h,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){

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
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.h,left: 24.w,right: 24.w),
              child: Container(
                width: 327.w,
                height: 680.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color.fromRGBO(209, 213, 219, 1)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 12.h),
                      child: Text("Position *",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF Pro Display",
                            color: Color.fromRGBO(156, 163, 175, 1)
                        ),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 6.h,right: 12.w),
                      child: TextFormField(
                        controller: AuthCubit.Postion,
                        decoration: InputDecoration(

                            hintText: "Product Designer",
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.r)))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,top: 16.h),
                      child: Text("Type of work",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF Pro Display",
                            color: Color.fromRGBO(156, 163, 175, 1)
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,top: 6.h,right: 12.w),
                      child: TextFormField(
                        controller: AuthCubit.TypeOfWork,
                        decoration: InputDecoration(

                            hintText: "Full Time",
                            suffixIcon: GestureDetector(
                              onTap: (){

                              },
                                child: Icon(CupertinoIcons.chevron_down,size: 20,)),

                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.r)))),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 16.h),
                      child: Text("Company name *",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF Pro Display",
                            color: Color.fromRGBO(156, 163, 175, 1)
                        ),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 6.h,right: 12.w),
                      child: TextFormField(
                        controller: AuthCubit.CompName,
                        decoration: InputDecoration(

                            hintText: "Supafast Studio",
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.r)))),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 16.h),
                      child: Text("Location",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF Pro Display",
                            color: Color.fromRGBO(156, 163, 175, 1)
                        ),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 6.h,right: 12.w),
                      child: TextFormField(
                        controller: AuthCubit.Location,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                                child: Icon(Icons.location_on_outlined)
                            ),
                            hintText: "Purwokerto, Banyumas",
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.r)))),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Container(
                        width: 303.w,
                        height: 24.h,
                        child: Row(
                          children: [
                            Checkbox(value: this.value, onChanged:(bool? value){
                              setState(() {
                                this.value = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            ),
                            Text("I am currently working in this role")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 10.h),
                      child: Text("Start Year *",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF Pro Display",
                            color: Color.fromRGBO(156, 163, 175, 1)
                        ),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w,top: 6.h,right: 12.w),
                      child: TextFormField(
                        controller: AuthCubit.StartDate,
                        decoration: InputDecoration(

                            hintText: "February 2021",
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.r)))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:32.h,bottom: 10.h,left: 12.w,right: 12.w),
                      child: PrimaryButton(
                          title: 'Save',
                          onTap: () async {
                            await cubit.addExperince(
                              context,
                              pos: AuthCubit.Postion.text,
                              typeOfWork: AuthCubit.TypeOfWork.text,
                              comName: AuthCubit.Postion.text,
                              Location: AuthCubit.Location.text,
                              startYear: AuthCubit.StartDate.text
                            );
                            Navigator.pop(context);
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 24.h,right: 24.w,left: 22.w),
              child: Container(
                width: 329.w,
                height: 99.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color.fromRGBO(209, 213, 219, 1)
                  ),
                ),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Image.asset("assets/Images/GrowUpStudio.png"),
                  ),
                  title: Padding(
                    padding:  EdgeInsets.only(top: 10.h),
                    child: Text(
                      "Senior UI/UX Designer",
                      style: TextStyle(
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(17, 24, 39, 1)
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Remote • GrowUp Studio\n2019 - 2022",
                    style: TextStyle(
                        fontFamily: "SF Pro Display",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromRGBO(156, 163, 175, 1)
                    ),
                  ),
                  trailing: Padding(
                    padding:  EdgeInsets.only(top: 5.h),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {

                        });
                      },
                      child: Icon(Icons.edit,
                        color: Color.fromRGBO(51, 102, 255, 1),

                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    });
  }
}
