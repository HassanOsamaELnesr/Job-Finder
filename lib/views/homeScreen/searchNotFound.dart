import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_app/views/homeScreen/searchFound.dart';

class SearchNotFound extends StatefulWidget {
  const SearchNotFound({super.key});

  @override
  State<SearchNotFound> createState() => _SearchNotFoundState();
}

class _SearchNotFoundState extends State<SearchNotFound> {
  bool filter1=false;
  bool filter2=false;
  bool filter3=false;
  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/Icons/arrow-left.svg',
                    height: 24.h,
                    width: 24.w,
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
                ]
        ),
          ),
                SizedBox(height: 116,),
                Image.asset("assets/Images/searchAnimation.png",
                  width: 173,
                  height: 142,
                ),
                SizedBox(height: 20,),
                Text("Search not found",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 273,
                    height: 42,
                    child: Column(
                      children: [
                        Text("Try searching with different keywords so "),
                        Text("we can show you")
                      ],
                    )),
          ]
      )
          )
        ),
      ),
    );
  }
}
