

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/constants/constants.dart';
import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../uploadOfWork/uploadOfWork.dart';

class Upload extends StatefulWidget {
  const Upload({super.key,required this.id,required this.fullName,required this.email,required this.mobile,required this.wrktyp});
  final String id;
  final String fullName;
  final String email;
  final String mobile;
  final String wrktyp;

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  PlatformFile? pdfFile;

  void uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        pdfFile = result.files.first;
      });
    } else {
      // User canceled the picker
    }
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return  Scaffold(
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
                                image: const DecorationImage(
                                    image: AssetImage(
                                        JobFinderConstants.blueCircleImage))
                              // color: const Color.fromRGBO(51, 102, 255, 1),
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
                                color: Colors.transparent,
                                border: Border.all(
                                    color: const Color.fromRGBO(51, 102, 255, 1))),
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
                                  color: Color.fromRGBO(51, 102, 255, 1)),
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
                        "Upload portfolio",
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
                            "Upload CV",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "SF Pro Display",
                                color: Color.fromRGBO(17, 24, 39, 1)),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF Pro Display",
                              color: Color.fromRGBO(255, 71, 43, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Container(
                        height: 74,
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8).r,
                          border: Border.all(
                            color: const Color.fromRGBO(209, 213, 217, 1),
                          ),
                        ),
                        child: Padding(
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
                                      pdfFile == null
                                          ? "Rafif Dian.CV"
                                          : pdfFile!.name.toString(),
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
                        ),
                      ),
                      SizedBox(height: 20.h),
                      const Text(
                        "Other File",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF Pro Display",
                            color: Color.fromRGBO(17, 24, 39, 1)),
                      ),
                      SizedBox(height: 12.h),
                      GestureDetector(
                        onTap: () {
                          uploadFile();
                        },
                        child: SizedBox(
                          height: 250.h,
                          width: double.infinity,
                          child: CustomPaint(
                            painter: DashedBorderPainter(),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: const Color.fromRGBO(236, 242, 255, 1),
                                border: Border.all(
                                  width: 1,
                                  style: BorderStyle.none,
                                  color: const Color.fromRGBO(102, 144, 255, 1),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 16.0.h),
                                      child: Container(
                                        height: 56,
                                        width: 56,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              214, 228, 255, 1),
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                        child: SvgPicture.asset(
                                          JobFinderConstants.fileLogo,
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.h),
                                    const Text(
                                      "Upload your other file",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "SF Pro Display",
                                          color: Color.fromRGBO(17, 24, 39, 1)),
                                    ),
                                    SizedBox(height: 8.h),
                                    const Text(
                                      "Max. file size 10 MB",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SF Pro Display",
                                          color: Color.fromRGBO(107, 114, 128, 1)),
                                    ),
                                    SizedBox(height: 24.h),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.0.w, right: 16.w),
                                      child: GestureDetector(
                                        onTap: () {
                                          uploadFile();
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                214, 228, 255, 1),
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    51, 102, 255, 1)),
                                            borderRadius:
                                            BorderRadius.circular(1000),
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    JobFinderConstants.uploadLogo),
                                                SizedBox(width: 10.w),
                                                const Text(
                                                  "Add file",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        51, 102, 255, 1),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "SF Pro Display",
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 26.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0.w, right: 16.w,bottom: 20.h),
                        child: GestureDetector(
                          onTap: () {
                            cubit.applyJob(context,
                              email: widget.email,
                              cv: pdfFile,
                              name: widget.fullName,
                              jobsId: widget.id,
                              mobile: widget.mobile,
                              workType: widget.wrktyp,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(51, 102, 255, 1),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            child: const Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "SF Pro Display",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
    });
  }
}
