import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({super.key, required this.title, required this.onTap});

  final String? title;
  final VoidCallback? onTap;
  double? width = 343.w;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 327.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(51, 102, 255, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(24.r),
          ),
        ),
        child: Center(
            child: Text(title!, style: const TextStyle(color: Colors.white))),
      ),
    );
  }
}
