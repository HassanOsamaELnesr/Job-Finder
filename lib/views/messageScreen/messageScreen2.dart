import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/widgets/bottomNavigationBar.dart';

class MessageScreen2 extends StatefulWidget {
  const MessageScreen2({Key? key}) : super(key: key);

  @override
  State<MessageScreen2> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen2> {
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
                SizedBox(height: 15.h,),
                ListTile(
                  leading: Padding(
                    padding:  EdgeInsets.only(left:20.w ),
                    child: Text("Unread",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),

                    ),
                  ),
                  trailing: TextButton(onPressed: (){},
                      child:Text("Read all messages")),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 21.h),
                  child: Container(
                    width: 327.w,
                    height: 55.h,
                    child: Row(
                      children: [
                        Image.asset("assets/Images/img_13.png",
                          width: 44.w,
                          height: 44.h,

                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Twitter",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),




                              ),
                              Text("Here is the link: http://zoom.com/abcdeefg",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),




                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    
                  ),
                ),



              ],
            ),
          ),
        )
    );
  }
}

