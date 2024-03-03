import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_app/controllers/widgets/components/spectrumLogo.dart';
import 'package:jobfinder_app/controllers/widgets/components/twitterLogo.dart';

class SearchedJobCard extends StatelessWidget {
  const SearchedJobCard({Key? key,required this.img,required this.name}) : super(key: key);
  final String img;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103.h,
      width: 350.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Image.network(img,scale: 40,),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 60.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      name,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const Text(
                      "Twitter • Jakarta, Indonesia ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  // right: 24.w,
                  top: 10.5.h,
                ),
                child: SvgPicture.asset(
                  'assets/Icons/savedBlue.svg',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 73.w,
                height: 26.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(214, 228, 255, 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child: Text(
                    "Fulltime",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(51, 102, 255, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 6.5.w, left: 6.5.w),
                child: Container(
                  width: 73.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(214, 228, 255, 1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Center(
                    child: Text(
                      "Remote",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(51, 102, 255, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: const Text(
                  "\$15K",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(46, 142, 24, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ),
              const Text(
                "/Month",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
