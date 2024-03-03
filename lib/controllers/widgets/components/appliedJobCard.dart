// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';
import 'package:jobfinder_app/views/biodataScreen/biodataScreen.dart';
import 'package:jobfinder_app/views/typeOfWorkScreen/typeOfScreen.dart';
import 'package:jobfinder_app/views/uploadOfWork/uploadOfWork.dart';

class AppliedJobCard extends StatelessWidget {
  AppliedJobCard(
      {super.key,
      required this.subTitle,
      required this.jobImage,
        required this.jobName,
      required this.isTypedOfWorkDone,
      required this.isUploadPortfolio,
      required this.isSaved});
  bool isTypedOfWorkDone = false;
  bool isUploadPortfolio = false;
  bool isSaved = false;
  String jobName = "";
  String subTitle = "Spectrum • Jakarta, Indonesia";
  String jobImage = JobFinderConstants.spectrumLogo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isTypedOfWorkDone == false) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BioDataScreen(
                  subTitle: subTitle,
                  jobImage: jobImage,
                  jobName: jobName,
                ),
              ));
        } else if (isTypedOfWorkDone && !isUploadPortfolio) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TypeOfWorkScreen(
                  subTitle: subTitle,
                  jobImage: jobImage,
                  jobName: jobName,
                ),
              ));
        } else if (isTypedOfWorkDone && isUploadPortfolio) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UploadOfWork(
                  subTitle: subTitle,
                  jobImage: jobImage,
                  jobName: jobName,
                ),
              ));
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24).r,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(jobImage,width: 40,height: 40,),
              SizedBox(width: 16.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    jobName,
                    style: const TextStyle(
                        fontFamily: "SF Pro Display",
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        fontSize: 18),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontFamily: "SF Pro Display",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(55, 65, 81, 1),
                        fontSize: 12),
                  ),
                ],
              ),
              const Spacer(),
              isSaved
                  ? SvgPicture.asset("assets/Icons/savedBlue.svg")
                  : SvgPicture.asset("assets/Icons/saved.svg"),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 26,
                width: 69.75,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(214, 228, 255, 1),
                    borderRadius: BorderRadius.circular(100).r),
                child: const Center(
                  child: Text(
                    "Fulltime",
                    style: TextStyle(
                        fontFamily: "SF Pro Display",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(51, 102, 255, 1)),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                height: 26,
                width: 69.75,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(214, 228, 255, 1),
                    borderRadius: BorderRadius.circular(100).r),
                child: const Center(
                  child: Text(
                    "Remote",
                    style: TextStyle(
                        fontFamily: "SF Pro Display",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(51, 102, 255, 1)),
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                "Posted 2 days ago",
                style: TextStyle(
                    fontFamily: "SF Pro Display",
                    color: Color.fromRGBO(55, 65, 81, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 75,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(209, 213, 219, 1),
                ),
                borderRadius: BorderRadius.circular(8).r),
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, top: 12).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100).r,
                            color: const Color.fromRGBO(51, 102, 255, 1)),
                        child: const Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(244, 244, 245, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      const Center(
                        child: Text(
                          "Biodata",
                          style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(51, 102, 255, 1)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset("assets/Icons/Line.svg"),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100).r,
                            color: isTypedOfWorkDone
                                ? const Color.fromRGBO(51, 102, 255, 1)
                                : Colors.transparent,
                            border: Border.all(
                                color: isTypedOfWorkDone
                                    ? Colors.transparent
                                    : const Color.fromRGBO(156, 163, 175, 1))),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: isTypedOfWorkDone
                                    ? const Color.fromRGBO(244, 244, 245, 1)
                                    : const Color.fromRGBO(156, 163, 175, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Center(
                        child: Text(
                          "Type of work",
                          style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: isTypedOfWorkDone
                                  ? const Color.fromRGBO(51, 102, 255, 1)
                                  : const Color.fromRGBO(156, 163, 175, 1)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      "assets/Icons/Line.svg",
                      color: isUploadPortfolio
                          ? const Color.fromRGBO(51, 102, 255, 1)
                          : const Color.fromRGBO(156, 163, 175, 1),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100).r,
                            color: isUploadPortfolio
                                ? const Color.fromRGBO(51, 102, 255, 1)
                                : Colors.transparent,
                            border: Border.all(
                                color: isUploadPortfolio
                                    ? Colors.transparent
                                    : const Color.fromRGBO(156, 163, 175, 1))),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: isUploadPortfolio
                                    ? const Color.fromRGBO(244, 244, 245, 1)
                                    : const Color.fromRGBO(156, 163, 175, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Center(
                        child: Text(
                          "Upload portfolio",
                          style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: isUploadPortfolio
                                  ? const Color.fromRGBO(51, 102, 255, 1)
                                  : const Color.fromRGBO(156, 163, 175, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
