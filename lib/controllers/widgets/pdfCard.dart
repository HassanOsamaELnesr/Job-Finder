import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class PdfCard extends StatefulWidget {
  const PdfCard({super.key,required this.pdf});
  final PlatformFile? pdf;

  @override
  State<PdfCard> createState() => _PdfCardState();
}

class _PdfCardState extends State<PdfCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16.w, top: 16, bottom: 16, right: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(JobFinderConstants.pdfIcon),
          SizedBox(
            width: 8.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 140.w,
                child: Text(
                  widget.pdf == null
                      ? "3D Designer"
                      : widget.pdf!.name.toString(),
                  maxLines:
                  1, // Set the maximum number of lines
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: "SF Pro Display",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(17, 24, 39, 1)),
                ),
              ),
              SizedBox(height: 7.h),
              const Text(
                "CV.pdf 300KB",
                style: TextStyle(
                    fontFamily: "SF Pro Display",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(107, 114, 128, 1)),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child:
            SvgPicture.asset(JobFinderConstants.editIcon),
          ),
          SizedBox(
            width: 8.w,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child:
            SvgPicture.asset(JobFinderConstants.exitIcon),
          ),
        ],
      ),
    );
  }
}
