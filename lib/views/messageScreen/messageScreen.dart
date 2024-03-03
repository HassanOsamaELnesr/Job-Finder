import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import 'Twitter.dart';
import 'messageScreen3.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
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
                         )
                       );

                     });



                   },
                       icon:  Icon(Icons.filter_list,





                   )),

                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 28.h),
                child: GestureDetector(
                  onTap: ()  {
                   //await cubit.getChatContent(context);
                    cubit.UserMsgList==null?
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MessageScreen3())):
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const twitter()));
                  },
                  child: Container(
                    width: 327.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 10.w),
                          child: Icon(Icons.message_outlined,size: 44,),
                        ),
                         Padding(
                           padding:  EdgeInsets.only(left: 16.w),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  EdgeInsets.only(top: 5.h),
                                 child: Text(cubit.compname.toString(),
                                   style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     fontSize: 16,
                                   ),




                                 ),
                               ),
                               Text(cubit.lastmsg.toString(),//cubit.UserMsgList[0]['massage'].isEmpty()?"":cubit.UserMsgList[0]['massage'],
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
              ),

            ],
          ),
        ),
      )
    );
    });
  }
}

