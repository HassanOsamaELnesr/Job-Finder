import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_app/controllers/widgets/pdfCard.dart';

import '../../controllers/constants/constants.dart';
import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/primaryButton.dart';
import '../uploadOfWork/uploadOfWork.dart';
class Portfolio extends StatefulWidget {
  const Portfolio({super.key});


  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  PlatformFile? pdfFile;
  PlatformFile? imgFile;
  File? file;
  File? img;
  int counter=0;

  void uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    FilePickerResult? result2 = await FilePicker.platform.pickFiles();

    if (result != null && result2 != null) {
      setState(() {
        pdfFile = result.files.first;
        imgFile = result2.files.first;
        file=File(result.files.first.path!);
        img=File(result2.files.first.path!);
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
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 24.w,right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 60.h),
              child: Container(
                width: 327.w,
                height: 24.h,
                child: Row(
                  children: [
                    Icon(Icons.arrow_back,size: 24,),
                    Padding(
                      padding:  EdgeInsets.only(left: 102.w),
                      child: Text("Portfolio",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Text("Add portfolio here"),
            ),
            SizedBox(height: 16,),
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
                              onTap: () async {
                                uploadFile();
                                counter++;
                                await cubit.addPortfolio(context,
                                  cv: pdfFile,
                                  img: imgFile
                                );
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
            SizedBox(height: 13,),
            Container(
              width: 327,
              height: 254,
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   for(int i=0;i<counter;i++)
                     Container(child: Column(
                       children: [
                         PdfCard(pdf: pdfFile),
                         PdfCard(pdf: imgFile)
                       ],
                     ))
                 ],
               ),
             ),
            ),

          ],
        ),
      ),
    );
      });
  }
}