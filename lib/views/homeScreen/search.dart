import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_app/views/homeScreen/searchFound.dart';
import 'package:jobfinder_app/views/homeScreen/searchNotFound.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                        controller: AuthCubit.Search,
                        textInputAction: TextInputAction.done,
                        onSubmitted: (value) async {
                          await cubit.search(context,txt: AuthCubit.Search.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  value==""?SearchNotFound(): SearchFound()));
                        },
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
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 500,
                    height: 268,
                    child: Column(
                      children: [
                        Container(
                          width: 500,
                          height: 36,
                          color: Colors.grey[200],
                          child: const Padding(
                            padding: EdgeInsets.only(left: 32,top: 10),
                            child: Text(
                              "Recent searches",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: "SF Pro Display"
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16,),

                         SizedBox(
                          width: 375,
                          height: 212,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Row(
                                      children: [
                                        Icon(CupertinoIcons.clock,size: 16,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text("Junior UI Designer",
                                            style: TextStyle(
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 205),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Row(
                                      children: [
                                        Icon(CupertinoIcons.clock,size: 16,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text("Junior UX Designer",
                                            style: TextStyle(
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 200),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Row(
                                      children: [
                                        Icon(CupertinoIcons.clock,size: 16,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text("Product Designer",
                                            style: TextStyle(
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 212),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Row(
                                      children: [
                                        Icon(CupertinoIcons.clock,size: 16,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text("Junior UI Designer",
                                            style: TextStyle(
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 205),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Row(
                                      children: [
                                        Icon(CupertinoIcons.clock,size: 16,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text("Junior UI Designer",
                                            style: TextStyle(
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 205),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Row(
                                      children: [
                                        Icon(CupertinoIcons.clock,size: 16,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text("Junior UI Designer",
                                            style: TextStyle(
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 205),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 268,
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 36,
                        color: Colors.grey[200],
                        child: const Padding(
                          padding: EdgeInsets.only(left: 32,top: 10),
                          child: Text(
                            "Popular searches",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: "SF Pro Display"
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),

                       SizedBox(
                        width: 375,
                        height: 212,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                const Row(
                                children: [
                                  Icon(CupertinoIcons.search,size: 16,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text("UI/UX Designer",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),
                                ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 225),
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Icon(
                                      CupertinoIcons.arrow_right_circle,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: const Row(
                                    children: [
                                      Icon(CupertinoIcons.search,size: 16,),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text("Project Manager",
                                          style: TextStyle(
                                              fontSize: 14
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 217),
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Icon(
                                      CupertinoIcons.arrow_right_circle,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: const Row(
                                    children: [
                                      Icon(CupertinoIcons.search,size: 16,),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text("Product Designer",
                                          style: TextStyle(
                                              fontSize: 14
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 212),
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Icon(
                                      CupertinoIcons.arrow_right_circle,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: const Row(
                                    children: [
                                      Icon(CupertinoIcons.search,size: 16,),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text("UX Designer",
                                          style: TextStyle(
                                              fontSize: 14
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 243),
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Icon(
                                      CupertinoIcons.arrow_right_circle,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: const Row(
                                  children: [
                                    Icon(CupertinoIcons.search,size: 16,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text("Front-End Developer",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                              ],
                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 194),
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Icon(
                                      CupertinoIcons.arrow_right_circle,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
        ),
      ),
    ),
      ),
    );
    });
  }
}
