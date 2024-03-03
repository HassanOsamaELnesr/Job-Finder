// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/widgets/comChat.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/chat.dart';
class twitter extends StatefulWidget {
  const twitter({super.key});

  @override
  State<twitter> createState() => _twitterState();
}


class _twitterState extends State<twitter> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 24.w,right: 24.w),
                child: Container(
                  width: 327.w,
                  height: 60.h,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.keyboard_arrow_left_sharp)),
                      SizedBox(width: 15.w,),
                      Icon(CupertinoIcons.chat_bubble_2,size: 36,),
                      SizedBox(width: 15.w,),
                      Text(cubit.compname.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),

                      ),


                      Padding(
                        padding:  EdgeInsets.only(left: 130.w),
                        child: IconButton(onPressed: (){
                          setState((

                              ) {
                            showBottomSheet(

                                context: context,
                                builder: (context) => Container(
                                  width: 375.w,
                                  height: 471.h,
                                  color: Colors.red,
                                  child: ListView(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 200,
                                      )
                                    ],
                                  ),

                                ));

                          }
                          );
                        },
                            icon:Icon(Icons.more_horiz),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 12.h),
                child: Container(
                  width: 327.w,
                  height: 18.h,
                  child: Row(
                    children: [
                      Text("_____________________"),
                      Text("Today,  Nov 13",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: "SF Pro Display",

                        ),
                      ),
                      Text("_____________________"),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 26.h),
                child: Container(
                  width: 327.w,
                  height: 568.h,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   width: 327.w,
                        //   height: 138.h,
                        //   child:Padding(
                        //     padding: const EdgeInsets.only(right: 70),
                        //     child: Container(
                        //
                        //       decoration: BoxDecoration(
                        //           color: Color.fromRGBO(229, 231, 235, 1),
                        //           borderRadius: BorderRadius.only(topLeft: Radius.elliptical(8, 8))
                        //
                        //       ),
                        //       width: 272.w,
                        //       height: 138.h,
                        //       child:  Column(
                        //         children: [
                        //           Text("Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.",
                        //             style: TextStyle(
                        //               fontWeight: FontWeight.w400,
                        //               fontSize: 14,
                        //             ),
                        //           ),
                        //           Padding(
                        //             padding: const EdgeInsets.only(top: 40),
                        //             child: Text("                                                                           10.18",
                        //               style: TextStyle(
                        //                 fontSize: 12,
                        //                 fontWeight: FontWeight.w400,
                        //               ),
                        //
                        //             ),
                        //           )
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        //
                        // ),
                        // Padding(
                        //   padding:  EdgeInsets.only(top: 16.h),
                        //   child: FittedBox(
                        //     fit: BoxFit.contain,
                        //     child: Container(
                        //
                        //
                        //       child: Padding(
                        //         padding: EdgeInsets.only(left: 114.w),
                        //         child: Container(
                        //           color: Color.fromRGBO(51, 102, 255, 1),
                        //
                        //
                        //           width: 237.w,
                        //           height: 78.h,
                        //           child: Column(
                        //             children: [
                        //               Text("i Melan, thank you for considering me, this is good news for me.",
                        //               style: TextStyle(
                        //                 fontWeight: FontWeight.w400,
                        //                 fontSize: 14,
                        //                 color: Color.fromARGB(244, 244, 245, 1),
                        //
                        //               ),
                        //               ),
                        //               Padding(
                        //                 padding: const EdgeInsets.only(top: 15),
                        //                 child: Text("                                                         10.18",
                        //                   style: TextStyle(
                        //                     fontSize: 12,
                        //                     fontWeight: FontWeight.w400,
                        //                     color: Color.fromARGB(244, 244, 245, 1),
                        //
                        //                   ),
                        //
                        //                 ),
                        //               ),
                        //             ],
                        //
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                    // Padding(
                    //   padding:  EdgeInsets.only(right: 70.w,top: 16.h),
                    //   child: Container(
                    //
                    //     decoration: BoxDecoration(
                    //         color: Color.fromRGBO(229, 231, 235, 1),
                    //         borderRadius: BorderRadius.only(topLeft: Radius.elliptical(8, 8))
                    //
                    //     ),
                    //     width: 272.w,
                    //     height: 78.h,
                    //     child:  Column(
                    //       children: [
                    //         Text("Can we have an interview via google meet call today at 3pm?",
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 14,
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 15),
                    //           child: Text("                                                                           10.18",
                    //             style: TextStyle(
                    //               fontSize: 12,
                    //               fontWeight: FontWeight.w400,
                    //             ),
                    //
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    //
                    // Padding(
                    //   padding: EdgeInsets.only(left: 218.w,top: 16.h),
                    //   child: Container(
                    //     color: Color.fromRGBO(51, 102, 255, 1),
                    //
                    //
                    //     width: 119.w,
                    //     height: 58.h,
                    //     child: Column(
                    //       children: [
                    //         Text("Of course, I can!",
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 14,
                    //             color: Color.fromARGB(244, 244, 245, 1),
                    //
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 15),
                    //           child: Text("                        10.18",
                    //             style: TextStyle(
                    //               fontSize: 12,
                    //               fontWeight: FontWeight.w400,
                    //               color: Color.fromARGB(244, 244, 245, 1),
                    //
                    //             ),
                    //
                    //           ),
                    //         ),
                    //
                    //       ],
                    //
                    //     ),
                    //   ),
                    // ),
                    //     Padding(
                    //       padding:  EdgeInsets.only(right: 70.w,top: 16.h),
                    //       child: Container(
                    //
                    //         decoration: BoxDecoration(
                    //             color: Color.fromRGBO(229, 231, 235, 1),
                    //             borderRadius: BorderRadius.only(topLeft: Radius.elliptical(8, 8))
                    //
                    //         ),
                    //         width: 272.w,
                    //         height: 118.h,
                    //         child:  Column(
                    //           children: [
                    //             Text("Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you! https://meet.google.com/dis-sxdu-ave",
                    //
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.w400,
                    //                 fontSize: 14,
                    //               ),
                    //             ),
                    //             Padding(
                    //               padding: const EdgeInsets.only(top: 15),
                    //               child: Text("                                                                           10.18",
                    //                 style: TextStyle(
                    //                   fontSize: 12,
                    //                   fontWeight: FontWeight.w400,
                    //                 ),
                    //
                    //               ),
                    //             ),
                    //
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                        CompChat(txt: "hsjhsj"),
                        // // cubit.userMsg==null?  Container():
                            for(int i=cubit.UserMsgList.length-1;i>=0;i--)
                              cubit.UserMsgList[i]['sender_user']=="user"?
                                 Chat(txt: cubit.UserMsgList[i]['massage'],):
                                 CompChat(txt: cubit.UserMsgList[i]['massage']),

                        // for(int i=cubit.CompMsgList.length-1;i>=0;i--)
                        // CompChat(txt: cubit.CompMsgList[i]),








                      ],
                    ),
                  ),

                ),
              ),
              Container(
                width: 327.w,
                height: 42.h,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      width: 42.w,
                      height: 42.h,
                      child: Icon(CupertinoIcons.paperclip),


                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey),
                        ),

                        width: 227.w,
                        height: 42.h,
                        child:  TextField(
                          textInputAction: TextInputAction.done,
                        onSubmitted: (value) async {
                           // print("dasdads");
                            await cubit.userSendMsg(context,Msg: value);
                            await cubit.getChatContent(context);
                        }
                          ,
                        decoration: InputDecoration(

                        hintText: 'Write a message...',


                            ),

                        ),

                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        width: 42.w,
                        height: 42.h,
                        child: Icon(CupertinoIcons.mic),


                      ),
                    ),





                  ],

                ),
              ),

            ],
          ),
        ),
      ),
    );
    });
  }
}
