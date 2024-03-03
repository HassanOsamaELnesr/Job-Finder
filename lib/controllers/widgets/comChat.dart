import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompChat extends StatefulWidget {
  const CompChat({super.key,required this.txt});
final String txt;
  @override
  State<CompChat> createState() => _CompChatState();
}

class _CompChatState extends State<CompChat> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(right: 70.w,top: 16.h),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(

          decoration: BoxDecoration(
              color: Color.fromRGBO(229, 231, 235, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(8, 8))

          ),

          child:  Column(
            children: [
              Text(widget.txt,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("                                                                           10.18",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
