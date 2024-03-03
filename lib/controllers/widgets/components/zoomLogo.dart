import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ZoomIcon extends StatelessWidget {
  const ZoomIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 20.5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 40.w,
            height: 40.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 24.5),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(64, 135, 252, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 32.w,
            height: 32.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 27.w, top: 34.5),
          child: SvgPicture.asset(
            'assets/Icons/camera.svg',
            height: 12.h,
            width: 18.w,
          ),
        ),
      ],
    );
  }
}
