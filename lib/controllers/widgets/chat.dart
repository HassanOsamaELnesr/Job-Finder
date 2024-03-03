import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chat extends StatefulWidget {
  const Chat({super.key,required this.txt});
  final String txt;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 16.h),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8),topLeft: Radius.circular(8), topRight: Radius.circular(0))
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 114.w),
            child: Container(

              color: Color.fromRGBO(51, 102, 255, 1),


              width: 237.w,
              height: 78.h,
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 10.h,left: 10.w,right: 10.w),
                    child: Text(widget.txt,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(244, 244, 245, 1),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("                                                         10.18",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(244, 244, 245, 1),

                      ),

                    ),
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
