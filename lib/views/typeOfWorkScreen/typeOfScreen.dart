// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';
import 'package:jobfinder_app/controllers/widgets/primaryButton.dart';
import 'package:jobfinder_app/views/uploadOfWork/uploadOfWork.dart';

enum TypeOfWork { ui, ux, graphic, front }

class TypeOfWorkScreen extends StatefulWidget {
  TypeOfWorkScreen({
    super.key,
    required this.subTitle,
    required this.jobImage,
    required this.jobName
  });
  String subTitle = "Spectrum • Jakarta, Indonesia";
  String jobImage = JobFinderConstants.spectrumLogo;
  String jobName = "";
  @override
  State<TypeOfWorkScreen> createState() => _TypeOfWorkScreenState();
}

class _TypeOfWorkScreenState extends State<TypeOfWorkScreen> {
  TypeOfWork typeOfWork = TypeOfWork.ui;
  bool isUxDesigner = true;
  bool isUiDesigner = false;
  bool isGraphicDesigner = false;
  bool isFrontend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const BackButton(),
                SizedBox(
                  width: 86.5.w,
                ),
                const Text(
                  JobFinderConstants.appliedJob,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(17, 24, 39, 1)),
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: const EdgeInsets.only(left: 15.0).r,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: NetworkImage(widget.jobImage),
                      height: 48,
                      width: 48,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 12.h),
                     Text(
                       widget.jobName,
                      style: const TextStyle(
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 24, 39, 1),
                          fontSize: 20),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      widget.subTitle,
                      style: const TextStyle(
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(55, 65, 81, 1),
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: const EdgeInsets.only(left: 46.5, right: 23).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100).r,
                            image: const DecorationImage(
                                image: AssetImage(
                                    JobFinderConstants.blueCircleImage))
                            // color: const Color.fromRGBO(51, 102, 255, 1),
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
                    child: SvgPicture.asset(
                      "assets/Icons/Line.svg",
                      color: const Color.fromRGBO(51, 102, 255, 1),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100).r,
                            border: Border.all(
                                color: const Color.fromRGBO(51, 102, 255, 1))),
                        child: const Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(51, 102, 255, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      const Center(
                        child: Text(
                          "Type of work",
                          style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(51, 102, 255, 1)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      "assets/Icons/Line.svg",
                      color: const Color.fromRGBO(156, 163, 175, 1),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100).r,
                            color: Colors.transparent,
                            border: Border.all(
                                color: const Color.fromRGBO(156, 163, 175, 1))),
                        child: const Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(156, 163, 175, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      const Center(
                        child: Text(
                          "Upload portfolio",
                          style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(17, 24, 39, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24).r,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Type of work",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF Pro Display",
                        color: Color.fromRGBO(17, 24, 39, 1)),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const Text(
                    "Fill in your bio data correctly",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "SF Pro Display",
                        color: Color.fromRGBO(107, 114, 128, 1)),
                  ),
                  SizedBox(height: 28.h),
                  GestureDetector(
                    onTap: () {
                      isUxDesigner = true;
                      isGraphicDesigner = false;
                      isUiDesigner = false;
                      isFrontend = false;
                      setState(() {
                        typeOfWork = TypeOfWork.ui;
                      });
                    },
                    child: Container(
                      height: 85,
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: isUxDesigner
                            ? const Color.fromRGBO(214, 228, 255, 1)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8).r,
                        border: Border.all(
                          color: isUxDesigner
                              ? const Color.fromRGBO(51, 102, 255, 1)
                              : const Color.fromRGBO(208, 213, 219, 1),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 16, right: 16)
                                .r,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Senior UX Designer",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(17, 24, 39, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.8.h,
                                ),
                                const Text(
                                  "CV.pdf",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(107, 114, 128, 1),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Radio<TypeOfWork>(
                              value: TypeOfWork.ui,
                              groupValue: typeOfWork,
                              onChanged: (TypeOfWork? value) {
                                setState(() {
                                  isUxDesigner = true;
                                  isGraphicDesigner = false;
                                  isUiDesigner = false;
                                  isFrontend = false;
                                  typeOfWork = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  GestureDetector(
                    onTap: () {
                      isUxDesigner = false;
                      isGraphicDesigner = false;
                      isUiDesigner = true;
                      isFrontend = false;
                      setState(() {
                        typeOfWork = TypeOfWork.ux;
                      });
                    },
                    child: Container(
                      height: 85,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isUiDesigner
                            ? const Color.fromRGBO(214, 228, 255, 1)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8).r,
                        border: Border.all(
                          color: isUiDesigner
                              ? const Color.fromRGBO(51, 102, 255, 1)
                              : const Color.fromRGBO(208, 213, 219, 1),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 16, right: 16)
                                .r,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Senior UI Designer",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(17, 24, 39, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.8.h,
                                ),
                                const Text(
                                  "CV.pdf",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(107, 114, 128, 1),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Radio<TypeOfWork>(
                              value: TypeOfWork.ux,
                              groupValue: typeOfWork,
                              onChanged: (TypeOfWork? value) {
                                setState(() {
                                  typeOfWork = value!;
                                  isUxDesigner = false;
                                  isGraphicDesigner = false;
                                  isUiDesigner = true;
                                  isFrontend = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  GestureDetector(
                    onTap: () {
                      isUxDesigner = false;
                      isGraphicDesigner = true;
                      isUiDesigner = false;
                      isFrontend = false;
                      setState(() {
                        typeOfWork = TypeOfWork.graphic;
                      });
                    },
                    child: Container(
                      height: 85,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isGraphicDesigner
                            ? const Color.fromRGBO(214, 228, 255, 1)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8).r,
                        border: Border.all(
                          color: isGraphicDesigner
                              ? const Color.fromRGBO(51, 102, 255, 1)
                              : const Color.fromRGBO(208, 213, 219, 1),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 16, right: 16)
                                .r,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Graphik Designer",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(17, 24, 39, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.8.h,
                                ),
                                const Text(
                                  "CV.pdf",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(107, 114, 128, 1),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Radio<TypeOfWork>(
                              value: TypeOfWork.graphic,
                              groupValue: typeOfWork,
                              onChanged: (TypeOfWork? value) {
                                setState(() {
                                  typeOfWork = value!;
                                  isUxDesigner = false;
                                  isGraphicDesigner = true;
                                  isUiDesigner = false;
                                  isFrontend = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  GestureDetector(
                    onTap: () {
                      isUxDesigner = false;
                      isGraphicDesigner = false;
                      isUiDesigner = false;
                      isFrontend = true;
                      setState(() {
                        typeOfWork = TypeOfWork.front;
                      });
                    },
                    child: Container(
                      height: 85,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isFrontend
                            ? const Color.fromRGBO(214, 228, 255, 1)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8).r,
                        border: Border.all(
                          color: isFrontend
                              ? const Color.fromRGBO(51, 102, 255, 1)
                              : const Color.fromRGBO(208, 213, 219, 1),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 16, right: 16)
                                .r,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Front-End Developer",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(17, 24, 39, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.8.h,
                                ),
                                const Text(
                                  "CV.pdf",
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(107, 114, 128, 1),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Radio<TypeOfWork>(
                              value: TypeOfWork.front,
                              groupValue: typeOfWork,
                              onChanged: (TypeOfWork? value) {
                                setState(() {
                                  typeOfWork = value!;
                                  isUxDesigner = false;
                                  isGraphicDesigner = false;
                                  isUiDesigner = false;
                                  isFrontend = true;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0.w),
                    child: PrimaryButton(
                      title: 'Next',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UploadOfWork(
                              subTitle: widget.subTitle,
                              jobImage: widget.jobImage, jobName: widget.jobName,),
                        ));
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
          ],
        ),
      )),
    );
  }
}
