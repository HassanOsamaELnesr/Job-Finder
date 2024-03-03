import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../views/appliedScreen/bioData.dart';
import '../../cubits/AuthCubit/States.dart';
import '../../cubits/AuthCubit/cubit.dart';

class SavedJobPopUpCard extends StatelessWidget {
  const SavedJobPopUpCard({Key? key,required this.id}) : super(key: key);
final String id;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return SizedBox(
      width: 375.w,
      height: 271.h,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 12.h,
              ),
              child: SizedBox(
                width: 48.w,
                child: SvgPicture.asset(
                  'assets/Icons/VectorBar.svg',
                  height: 12.h,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                       BioData(jobId: id,)));
            },
            child: Container(
              height: 50.h,
              width: 327.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(209, 213, 219, 1),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 14.5.h, bottom: 14.5.h, left: 14.w, right: 14.w),
                    child: SvgPicture.asset(
                      'assets/Icons/directbox.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 14.h,
                      bottom: 14.h,
                    ),
                    child: SizedBox(
                      width: 235.w,
                      child: const Text(
                        "Apply Job",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.5.h, bottom: 16.5.h, right: 14.w),
                    child: SvgPicture.asset(
                      'assets/Icons/arrow-right.svg',
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50.h,
              width: 327.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(209, 213, 219, 1),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 14.5.h, bottom: 14.5.h, left: 14.w, right: 14.w),
                    child: SvgPicture.asset(
                      'assets/Icons/export.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 14.h,
                      bottom: 14.h,
                    ),
                    child: SizedBox(
                      width: 235.w,
                      child: const Text(
                        "Share via...",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.5.h, bottom: 16.5.h, right: 14.w),
                    child: SvgPicture.asset(
                      'assets/Icons/arrow-right.svg',
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          InkWell(
            onTap: () async {
             await cubit.deleteFavorite(context,jobid: id);
            },
            child: Container(
              height: 50.h,
              width: 327.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(209, 213, 219, 1),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 14.5.h, bottom: 14.5.h, left: 14.w, right: 14.w),
                    child: SvgPicture.asset(
                      'assets/Icons/savedBlack.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 14.h,
                      bottom: 14.h,
                    ),
                    child: SizedBox(
                      width: 235.w,
                      child: const Text(
                        "Cancel save",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.5.h, bottom: 16.5.h, right: 14.w),
                    child: SvgPicture.asset(
                      'assets/Icons/arrow-right.svg',
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    });
  }
}
