import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/widgets/primaryButton.dart';

class StickedButton extends StatelessWidget {
  const StickedButton({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 58.h,
        width: 327.w,
        child: Padding(
          padding: EdgeInsets.only(bottom: 9.h),
          child: PrimaryButton(
            onTap: onTap,
            title: 'Apply now',
          ),
        ));
  }
}
