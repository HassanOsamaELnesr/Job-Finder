import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/controllers/widgets/components/savedJobCard.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/primaryButton.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    int num=cubit.data2.length;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 24.w, bottom: 20.h),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/Icons/arrow-left.svg',
                      height: 24.h,
                      width: 24.w,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 16.h, left: 112.w, bottom: 20.h),
                      child: const Text(
                        "Saved",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              num==0?
              Padding(
                padding:  EdgeInsets.only(top: 165.h),
                child: Column(
                  children: [
                    Image.asset("assets/Images/img_2.png",
                      width: 173,
                      height: 142,
                    ),
                    SizedBox(height: 20,),
                    Text("Nothing has been saved yet",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Press the star icon on the job you want to save."),

                  ],
                ),
              ):
              Container(
                width: double.infinity,
                height: 36.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 244, 245, 1),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(
                      229,
                      231,
                      235,
                      1,
                    ),
                  ),
                ),
                child:  Center(
                  child: Text(
                    num.toString()+" Job Saved",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(107, 114, 128, 1),
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),

               for(int i=0;i<cubit.data2.length;i++)
               Container(
               child: Column(
                 children: [
                   SavedJobCard(
                     jobName: cubit.data2[i]['jobs']['name'],
                     jobImg: cubit.data2[i]['jobs']['image'],
              ),
                   Divider()
                 ],
               ),
               )
              // const SavedJobCard(),
              // const Divider(),
              // const SavedJobCard(),
              // const Divider(),
              // const SavedJobCard(),
              // const Divider(),
              // const SavedJobCard(),
              // const Divider(),
              // const SavedJobCard(),
              // const Divider(),
              // const SavedJobCard(),
            ],
          ),
        ),
      ),
    );
    });
  }
}
