import 'package:flutter/cupertino.dart';

class Tags extends StatelessWidget {
  final double w;
  final double h;
  final int r;
  final int g;
  final int b;
  final double o;
  final String txt;
  const Tags({super.key,required this.w,required this.h,required this.r,required this.g,required this.b,required this.o,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(r, g, b, o)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
            children: [
              Image.asset("assets/Images/"+txt+".png",width: 26,height: 26,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(txt,
                  style: TextStyle(
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
