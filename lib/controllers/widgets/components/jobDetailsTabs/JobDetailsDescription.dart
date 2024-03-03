import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';

class JobDetailsDescription extends StatelessWidget {
  const JobDetailsDescription({Key? key,required this.jobDesc,required this.jobSkill}) : super(key: key);
  final String jobDesc;
  final String jobSkill;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, left: 23.w, right: 20.w),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Job Description",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
           Text(
            jobDesc,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Display',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Skill Required",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
           Text(
            jobSkill,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Display',
            ),
          ),
        ],
      ),
    );
  }
}
