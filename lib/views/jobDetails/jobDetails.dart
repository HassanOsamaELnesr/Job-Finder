import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/widgets/components/floatedStickedButton.dart';
import 'package:jobfinder_app/controllers/widgets/components/jobDetailsTabs/JobDetailsTabs.dart';
import 'package:jobfinder_app/controllers/widgets/components/twitterLogo.dart';
import 'package:jobfinder_app/views/appliedScreen/bioData.dart';

import '../biodataScreen/biodataScreen.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({Key? key,required this.jobImg,required this.jobName,required this.jobTime,required this.jobType,required this.jobLvl,required this.jobDesc,required this.jobSkill,required this.compName,required this.compEmail,required this.compWeb,required this.compInfo }) : super(key: key);
  final String jobImg;
  final String jobName;
  final String jobTime;
  final String jobType;
  final String jobLvl;
  final String jobDesc;
  final String jobSkill;
  final String compName;
  final String compEmail;
  final String compWeb;
  final String compInfo;
  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: StickedButton(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    BioData(jobId: widget.jobName=="Test Engineers"?"4":
                    widget.jobName=="Machine Learning Engineer"?"3":
                    widget.jobName=="Flutter Developer"?"2":""

                      ,)));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap:(){
                       Navigator.pop(context);
        },
                      child: SvgPicture.asset(
                        'assets/Icons/arrow-left.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Job Detail",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/Icons/savedBlue.svg',
                      height: 24.h,
                      width: 24.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Center(
                child: Column(
                  children: [
                    Image.network(widget.jobImg,width: 48.w,height: 48.h,),
                    SizedBox(
                      height: 12.h,
                    ),
                     Text(
                      widget.jobName,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                     Text(
                      widget.compName,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 73.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(214, 228, 255, 1),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child:  Center(
                            child: Text(
                              widget.jobTime,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
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
                            child:  Center(
                              child: Text(
                                widget.jobType,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
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
                          padding: EdgeInsets.only(
                            right: 16.w,
                          ),
                          child: Container(
                            width: 73.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(214, 228, 255, 1),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child:  Center(
                              child: Text(
                                widget.jobLvl,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  color: Color.fromRGBO(51, 102, 255, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF Pro Display',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                     JobDetailsTabs(
                      compEmail: widget.compEmail,
                      compInfo: widget.compInfo,
                      compWeb: widget.compWeb,
                      jobDesc: widget.jobDesc,
                      jobSkill: widget.jobSkill,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
