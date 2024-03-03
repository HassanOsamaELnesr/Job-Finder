import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/widgets/bottomNavigationBar.dart';

class MessageScreen3 extends StatefulWidget {
  const MessageScreen3({Key? key}) : super(key: key);

  @override
  State<MessageScreen3> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(top: 24.h),
            child: Column(
              children: [
                Container(
                  width: 327.w,
                  height: 34.h,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back,size: 24,),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Text("Messsages",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 24.h,left: 16.w),
                  child: Row(
                    children: [
                      Container(
                        width: 267.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 24.w, left: 24.w),
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
                              prefixIcon: Align(
                                  widthFactor: 1.0.w,
                                  heightFactor: 1.0.h,
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  )),
                              hintText: 'Search....',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40.w,),
                      IconButton(onPressed:(

                          ){
                        setState(() {
                          showModalBottomSheet(
                            context: context,
                            builder: (_) =>Padding(
                              padding:  EdgeInsets.only(top: 24.h,left: 24.w),
                              child: Container(
                                width: 375.w,
                                height: 309.h,
                                child: ListView(
                                  children: [
                                    Container(
                                      width: 327.w,
                                      height: 23.h,
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 14.w),
                                        child: Text("Message filters",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(top: 16.h,right: 10.w),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24.0),
                                          border: Border.all(color: Colors.grey),
                                        ),
                                        child: ListTile(
                                          leading: Text("Unread",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),

                                          ),
                                          trailing: Icon(Icons.arrow_right_alt),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 16.h,right: 10.w),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24.0),
                                          border: Border.all(color: Colors.grey),
                                        ),
                                        child: ListTile(
                                          leading: Text("Spam",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),

                                          ),
                                          trailing: Icon(Icons.arrow_right_alt),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.only(top: 16.h,right: 10.w),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24.0),
                                          border: Border.all(color: Colors.grey),
                                        ),
                                        child: ListTile(
                                          leading: Text("Archived",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),

                                          ),
                                          trailing: Icon(Icons.arrow_right_alt),
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          );

                        });



                      },
                          icon:  Icon(Icons.filter_list,





                          )),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 106.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Images/img_15.png",
                        width: 140.w,
                        height: 140.h,

                      )
                    ],
                  ),
                ),
                Container(
                  width: 327.w,
                  height: 122.h,
                  child: Column(
                    children: [
                      Text("You have not received any",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24
                        ),

                      ),
                      Text("messages",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24
                        ),

                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 12.h),
                        child: Text("Once your application has reached the interview stage, you will get a message from the recruiter.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),

                        ),
                      ),




                    ],
                  ),
                ),





              ],
            ),
          ),
        )
    );
  }
}

