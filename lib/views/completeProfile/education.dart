import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/views/completeProfile/completeProfile.dart';

import '../../controllers/widgets/primaryButton.dart';
import '../forgetPassword/checkYourMail.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 24.w,right: 24.w,top: 60.h),
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
                    padding:  EdgeInsets.only(left: 90.w),
                    child: Text("Education",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: "SF Pro Display"
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height:32.h ,),
          Container(
            width: 327.w,
            height: 550.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color.fromRGBO(209, 213, 219, 1)
            ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 12),
                  child: Text("University *",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF Pro Display",
                    color: Color.fromRGBO(156, 163, 175, 1)
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 6,right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                          child: Text("Northern Michigan University")
                        ),

                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.r)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 16),
                  child: Text("Title",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro Display",
                        color: Color.fromRGBO(156, 163, 175, 1)
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 6,right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                            child: Text("Bachelor")
                        ),

                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.r)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 16),
                  child: Text("Start Year",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro Display",
                        color: Color.fromRGBO(156, 163, 175, 1)
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 6,right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                            child: Text("December 2019")
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,color: Colors.black,),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.r)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 16),
                  child: Text("End Year",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro Display",
                        color: Color.fromRGBO(156, 163, 175, 1)
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12,top: 6,right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                top: 18.h, bottom: 18.h, left: 16.w, right: 12.w),
                            child: Text("December 2022")
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,color: CupertinoColors.label,),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.r)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:25.h,bottom: 10.h,left: 12.w,right: 12.w),
                  child: PrimaryButton(
                      title: 'Save',
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
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
                  child: Image.asset("assets/Images/arizona.png"),
                ),
                title: Padding(
                  padding:  EdgeInsets.only(top: 10.h),
                  child: Text(
                    "The University of Arizona",
                    style: TextStyle(
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(17, 24, 39, 1)
                    ),
                  ),
                ),
                subtitle: Text(
                  "Bachelor of Art and Design\n2012 - 2015",
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
    );
  }
}
