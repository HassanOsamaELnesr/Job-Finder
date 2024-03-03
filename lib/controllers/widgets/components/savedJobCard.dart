import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_app/controllers/widgets/components/savedJobPopUpCard.dart';
import 'package:jobfinder_app/controllers/widgets/components/twitterLogo.dart';

import '../../cubits/AuthCubit/States.dart';
import '../../cubits/AuthCubit/cubit.dart';

class SavedJobCard extends StatelessWidget {
  const SavedJobCard({Key? key,required this.jobName,required this.jobImg}) : super(key: key);
final String jobName;
final String jobImg;

  void _jobDetailsApplyingBottomSheet(context,{String? jobId}) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          return  SavedJobPopUpCard(id: jobId! ,);
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return InkWell(
      onTap: () {
        if(jobName=="Test Engineers") {
          _jobDetailsApplyingBottomSheet(context, jobId: cubit.job1FavId.toString());
        }
       else if(jobName=="Machine Learning Engineer") {
          _jobDetailsApplyingBottomSheet(context, jobId: cubit.job2FavId.toString());
        }
       else if(jobName=="Flutter Developer") {
          _jobDetailsApplyingBottomSheet(context, jobId: cubit.job3FavId.toString());
        }
      },
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: SizedBox(
          height: 79.h,
          width: 327.w,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(jobImg,width: 40.w,height: 40.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 95.w),
                    child: Column(
                      children: [
                         Text(
                          jobName=="Machine Learning Engineer"?"Machine Learning":jobName,
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
                       //right: 24.w,
                      top: 10.5.h,
                    ),
                    child: SvgPicture.asset(
                      'assets/Icons/more.svg',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Posted 2 days ago",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(55, 65, 81, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 6.0.w),
                        child: SvgPicture.asset(
                          'assets/Icons/clock.svg',
                          height: 12.h,
                          width: 12.w,
                        ),
                      ),
                      const Text(
                        "Be an early applicant",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(55, 65, 81, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
    });
  }
}
