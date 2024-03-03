// ignore_for_file: must_be_immutable

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';
import 'package:jobfinder_app/controllers/widgets/primaryButton.dart';
import 'package:jobfinder_app/views/typeOfWorkScreen/typeOfScreen.dart';

class BioDataScreen extends StatelessWidget {
  BioDataScreen({
    super.key,
    required this.subTitle,
    required this.jobImage,
    required this.jobName
  });
  String subTitle = "Spectrum • Jakarta, Indonesia";
  String jobImage = JobFinderConstants.spectrumLogo;
  bool isTypedOfWorkDone = false;
  bool isUploadPortfolio = false;
  String jobName = "";
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
                      image: NetworkImage(jobImage),
                      height: 48,
                      width: 48,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 12.h),
                     Text(
                      jobName,
                      style: TextStyle(
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 24, 39, 1),
                          fontSize: 20),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      subTitle,
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
                                  : const Color.fromRGBO(17, 24, 39, 1)),
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
                        height: 44,
                        width: 44,
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
                                  : const Color.fromRGBO(17, 24, 39, 1)),
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
                    "Biodata",
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 71, 39, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Rafif Dian Axelingga",
                      hintStyle: const TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 24, 34, 1)),
                      prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child:
                              SvgPicture.asset(JobFinderConstants.profileIcon)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 213, 219, 1)),
                          borderRadius: BorderRadius.circular(8).r),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 213, 219, 1)),
                          borderRadius: BorderRadius.circular(8).r),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 71, 39, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "rafifdian12@gmail.com",
                      hintStyle: const TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 24, 34, 1)),
                      prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child:
                              SvgPicture.asset(JobFinderConstants.emailIcon)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 213, 219, 1)),
                          borderRadius: BorderRadius.circular(8).r),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 213, 219, 1)),
                          borderRadius: BorderRadius.circular(8).r),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "No.Handphone",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 71, 39, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "0100-666-7234",
                      hintStyle: const TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 24, 34, 1)),
                      prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child: Stack(
                            children: [
                              const CountryCodePicker(
                                hideMainText: true,
                                initialSelection: 'US',
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18.0, left: 55)
                                        .r,
                                child: SvgPicture.asset(
                                    JobFinderConstants.arrowDownIcon),
                              )
                            ],
                          )),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 213, 219, 1)),
                          borderRadius: BorderRadius.circular(8).r),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 213, 219, 1)),
                          borderRadius: BorderRadius.circular(8).r),
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0.w),
                    child: PrimaryButton(
                      title: 'Next',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TypeOfWorkScreen(
                              subTitle: subTitle, jobImage: jobImage, jobName: jobName,),
                        ));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
