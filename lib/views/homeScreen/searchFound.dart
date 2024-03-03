import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_app/controllers/widgets/serachedJobCard.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/primaryButton.dart';
import '../forgetPassword/checkYourMail.dart';

class SearchFound extends StatefulWidget {
  const SearchFound({super.key});

  @override
  State<SearchFound> createState() => _SearchFoundState();
}

class _SearchFoundState extends State<SearchFound> {
  bool filter1=false;
  bool filter2=false;
  bool filter3=false;
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
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 14.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          child: SvgPicture.asset(
                            'assets/Icons/arrow-left.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                      ),
                      Container(
                        width: 291.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(color: Colors.grey),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: TextField(
                            keyboardType: TextInputType.name,


                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(1.r)),

                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(4.r)),

                              ),
                              prefixIcon:  const Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  )),
                              hintText: 'Type search...',


                            ),

                          ),
                        ),
                      ),



                    ],

                  ),
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Container(
                          width: 380,
                          height: 32,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    FilterBottomSheet(context);

                                  });
                                },
                                child: Image.asset("assets/Images/filterMenu.png",
                                width: 24,
                                height: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      filter1=!filter1;
                                    });
                                  },
                                  child: Container(
                                    width: 88,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: filter1? Color.fromRGBO(9, 26, 122, 1):Colors.white,
                                      border: Border.all(color: Color.fromRGBO(209, 213, 219, 1)),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Remote",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "SF Pro Display",
                                            color: filter1?Colors.white:Color.fromRGBO(107, 114, 128, 1)
                                          ),
                                        ),
                                        Icon(CupertinoIcons.chevron_down,
                                          size: 16,
                                          color: filter1?Colors.white:Color.fromRGBO(107, 114, 128, 1) ,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      filter2=!filter2;
                                    });
                                  },
                                  child: Container(
                                    width: 94,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: filter2? Color.fromRGBO(9, 26, 122, 1):Colors.white,
                                        border: Border.all(color: Color.fromRGBO(209, 213, 219, 1)),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Full Time",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "SF Pro Display",
                                              color: filter2?Colors.white:Color.fromRGBO(107, 114, 128, 1)
                                          ),
                                        ),
                                        Icon(CupertinoIcons.chevron_down,
                                          size: 16,
                                          color: filter2?Colors.white:Color.fromRGBO(107, 114, 128, 1) ,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      filter3=!filter3;
                                    });
                                  },
                                  child: Container(
                                    width: 96,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: filter3? Color.fromRGBO(9, 26, 122, 1):Colors.white,
                                        border: Border.all(color: Color.fromRGBO(209, 213, 219, 1)),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Post date",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "SF Pro Display",
                                              color: filter3?Colors.white:Color.fromRGBO(107, 114, 128, 1)
                                          ),
                                        ),
                                        Icon(CupertinoIcons.chevron_down,
                                          size: 16,
                                          color: filter3?Colors.white:Color.fromRGBO(107, 114, 128, 1) ,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 430,
                  height: 36,
                  color: Color.fromRGBO(229, 231, 235, 1),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 25),
                    child: Text(
                      "Featuring 120+ jobs",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro Display",
                        color: Color.fromRGBO(107, 114, 128, 1)
                      ),
                    ),
                  ),
                ),
                for(int i=0;i<cubit.SearchedJobs.length;i++)
                Container(
                 child:SearchedJobCard(img: cubit.SearchedJobs[0][i]['image'], name: cubit.SearchedJobs[0][i]['name'],),
                )
                // const SearchedJobCard(img: "Spectrum"),
                // const SearchedJobCard(img: "Twitter"),
                // const SearchedJobCard(img: "Twitter"),
                // const SearchedJobCard(img: "Twitter"),
                // const SearchedJobCard(img: "Twitter"),
                // const SearchedJobCard(img: "Twitter"),

              ],
            ),
          ),
        ),
      ),
    );
    });
  }
}
void FilterBottomSheet(context) {
  showModalBottomSheet<dynamic>(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            width: 375,
            height: 758.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 40, right: 24),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 92),
                        child: Text(
                            "Set Filter",
                          style: TextStyle(
                            fontFamily: "SF Pro Display",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 92),
                        child: TextButton(
                            onPressed: (){},
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                fontFamily: "SF Pro Display"
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,top: 28),
                  child: Row(
                    children: [
                      Text(
                          "Job Tittle",
                      style: TextStyle(
                        fontFamily: "SF Pro Display",
                        fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                      ),
                    ],
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 24,right: 24),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assets/Images/job.png",
                        width: 20,
                        height: 20,
                        color: Colors.black,
                      ),
                      labelText: "UI/UX Designer",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,top: 16),
                  child: Row(
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                            fontFamily: "SF Pro Display",
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 24,right: 24),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assets/Images/location.png",
                        width: 20,
                        height: 20,
                        color: Colors.black,
                      ),
                      labelText: "Jakarta, Indonesia",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,top: 16),
                  child: Row(
                    children: [
                      Text(
                        "Salary",
                        style: TextStyle(
                            fontFamily: "SF Pro Display",
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 24,right: 24),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assets/Images/coin.png",
                        width: 20,
                        height: 20,
                        color: Colors.black,
                      ),
                      labelText: "\$5K - \$10K",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(CupertinoIcons.chevron_down,
                          color: Colors.black,
                        size: 20,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,top: 16),
                  child: Row(
                    children: [
                      Text(
                        "Job Type",
                        style: TextStyle(
                            fontFamily: "SF Pro Display",
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,top: 12),
                  child: Container(
                    width: 400,
                    height: 84,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 86,
                              height: 34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(color: Color.fromRGBO(156, 163, 175, 1))
                              ),
                              child:Center(
                                child: Text(
                                  "Full Time",
                                  style: TextStyle(
                                      fontFamily: "SF Pro Display",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ) ,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Container(
                                width: 86,
                                height: 34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(color: Color.fromRGBO(156, 163, 175, 1))
                                ),
                                child:Center(
                                  child: Text(
                                    "Remote",
                                    style: TextStyle(
                                        fontFamily: "SF Pro Display",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ) ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Container(
                                width: 86,
                                height: 34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(color: Color.fromRGBO(156, 163, 175, 1))
                                ),
                                child:Center(
                                  child: Text(
                                    "Contract",
                                    style: TextStyle(
                                        fontFamily: "SF Pro Display",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ) ,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            Container(
                              width: 86,
                              height: 34,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  border: Border.all(color: Color.fromRGBO(156, 163, 175, 1))
                              ),
                              child:Center(
                                child: Text(
                                  "Part Time",
                                  style: TextStyle(
                                      fontFamily: "SF Pro Display",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ) ,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Container(
                                width: 86,
                                height: 34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(color: Color.fromRGBO(156, 163, 175, 1))
                                ),
                                child:Center(
                                  child: Text(
                                    "Onsite",
                                    style: TextStyle(
                                        fontFamily: "SF Pro Display",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ) ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Container(
                                width: 86,
                                height: 34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(color: Color.fromRGBO(156, 163, 175, 1))
                                ),
                                child:Center(
                                  child: Text(
                                    "Internship",
                                    style: TextStyle(
                                        fontFamily: "SF Pro Display",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ) ,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 20.h ,top: 50),
                  child: PrimaryButton(
                      title: 'Show result',
                      onTap: () {

                        Navigator.pop(context);
                      }
                  ),
                ),
              ],
            ),
          ),
        );
      }
  );
}
