import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/views/homeScreen/search.dart';
import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/components/twitterLogo.dart';
import '../jobDetails/jobDetails.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool s0=true;
  bool s1=true;
  bool s2=true;
  bool s3=true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    String? name=cubit.profName;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                  top: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Hi, $name👋",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        const Text(
                          "Create a better future for yourself here",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(107, 114, 128, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 38.w, right: 24.w, top: 23.h),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 24.r,
                            child: CircleAvatar(
                              radius: 23.r,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/Icons/bell.svg',
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const SearchScreen()));
              },
              child: Container(
                width: 327.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,),
                      child: Image.asset(
                        "assets/Images/search.png",
                        width: 20.w,
                        height: 20.h,
                        color: Colors.black,
                      )
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 12.w),
                      child: Text(
                          "Search....",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Display",
                          color: Color.fromRGBO(156, 163, 175, 1)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SizedBox(
                    width: 270.w,
                    child: const Text(
                      "Suggested Job",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                  },
                  child: SizedBox(
                    width: 60.w,
                    height: 20.h,
                    child: const Text(
                      "View all",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(51, 102, 255, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
            SizedBox(
              height: 183.h,
              width: 320.w,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  //  SuggestedJobCard(
                  //    jobName: cubit.suggestedJobs[1],
                  //    img: cubit.suggestedJobs[2],
                  //    jobTime: cubit.suggestedJobs[3],
                  //    jobType:cubit.suggestedJobs[4] ,
                  //    salary: cubit.suggestedJobs[13],
                  //    jobSkill: cubit.suggestedJobs[7],
                  //    jobLvl: cubit.suggestedJobs[5],
                  //    jobDesc: cubit.suggestedJobs[6],
                  //    compWeb: cubit.suggestedJobs[10],
                  //    compName: cubit.suggestedJobs[8],
                  //    compInfo: cubit.suggestedJobs[11],
                  //    compEmail: cubit.suggestedJobs[9],
                  // ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  JobDetails(
                        jobName: cubit.suggestedJobs[1],
                        jobTime: cubit.suggestedJobs[3],
                        jobType: cubit.suggestedJobs[4],
                        compEmail: cubit.suggestedJobs[9],
                        compInfo: cubit.suggestedJobs[11],
                        compName: cubit.suggestedJobs[8],
                        compWeb: cubit.suggestedJobs[10],
                        jobDesc: cubit.suggestedJobs[6],
                        jobImg: cubit.suggestedJobs[2],
                        jobLvl: cubit.suggestedJobs[5],
                        jobSkill: cubit.suggestedJobs[7],

                      )));
                },
                child: Container(
                  height: 183.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(9, 26, 122, 1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding:  EdgeInsets.only(left: 16.w,top: 18.h),
                            child: Image.network(
                              cubit.suggestedJobs[2],
                              width: 32.w,
                              height: 32.h,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 18.h, left: 16.w),
                                child:  Text(
                                  cubit.suggestedJobs[1],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'SF Pro Display',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  "Test Engineers • Egypt",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'SF Pro Display',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.w, top: 28.5.h,left: 100.w),
                            child: GestureDetector(
                              onTap: () async {
                                if(s0){
                                  await cubit.addFavorites(
                                      context,
                                      jobId: "4"
                                  );
                                  await cubit.getAllFavorites(context);

                                }else{
                                  await cubit.deleteFavorite(context,jobid: cubit.job1FavId.toString());

                                }

                                setState(() {
                                  if(s0){

                                    s0=false;
                                  }
                                  else
                                  {
                                    s0=true;
                                  }
                                });

                              },
                              child: SvgPicture.asset(
                                s0?'assets/Icons/savedBlack.svg':'assets/Icons/savedBlue.svg',
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                            ),
                            child: Container(
                              width: 87.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 0.14),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child:  Center(
                                child: Text(
                                  cubit.suggestedJobs[3],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'SF Pro Display',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 6.5.w, left: 6.5.w),
                            child: Container(
                              width: 87.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 0.14),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child:  Center(
                                child: Text(
                                  cubit.suggestedJobs[4],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.white,
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
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w),
                            child:  Text(
                              "\$"+cubit.suggestedJobs[13],
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.h, right: 60.w),
                            child: const Text(
                              "/Month",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 16.w,
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 96.w,
                                height: 32.h,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(51, 102, 255, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(16.r))),
                                child: const Center(
                                    child: Text('Apply',
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
                  SizedBox(
                    width: 16.h,
                  ),
                 // const SuggestedJobCard()
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SizedBox(
                    width: 270.w,
                    child: const Text(
                      "Recent Job",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: 60.w,
                    height: 20.h,
                    child: const Text(
                      "View all",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(51, 102, 255, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
        SizedBox(
          height: 103.h,
          width: 327.w,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(cubit.allJobs[0][1]['image'],scale: 32,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  JobDetails(
                            jobName: cubit.allJobs[0][1]['name'],
                            jobTime: cubit.allJobs[0][1]['job_time_type'],
                            jobType: cubit.allJobs[0][1]['job_type'],
                            compEmail: cubit.allJobs[0][1]['comp_email'],
                            compInfo: cubit.allJobs[0][1]['about_comp'],
                            compName: cubit.allJobs[0][1]['comp_name'],
                            compWeb: cubit.allJobs[0][1]['comp_website'],
                            jobDesc: cubit.allJobs[0][1]['job_description'],
                            jobImg: cubit.allJobs[0][1]['image'],
                            jobLvl: cubit.allJobs[0][1]['job_level'],
                            jobSkill: cubit.allJobs[0][1]['job_skill'],

                          )));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 50.w),
                      child: Column(
                        children: [
                           Text(
                           cubit.allJobs[0][1]['name'],
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SF Pro Display',
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          const Text(
                            "Machine Learning • Jakarta, Indonesia ",
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      // right: 24.w,
                      top: 10.5.h,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        if(s1){
                          await cubit.addFavorites(
                              context,
                              jobId: "3"
                          );
                          await cubit.getAllFavorites(context);
                        }else{
                          await cubit.deleteFavorite(context,jobid: cubit.job2FavId.toString());
                        }
                        setState(() {
                         if(s1){

                           s1=false;
                         }
                         else
                           {
                             s1=true;
                           }
                        });

                      },
                      child: SvgPicture.asset(
                        s1?'assets/Icons/savedBlack.svg':'assets/Icons/savedBlue.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        cubit.allJobs[0][1]['job_time_type'],
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
                          cubit.allJobs[0][1]['job_type'],
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
                     padding: const EdgeInsets.only(left: 80),
                     child: Text(
                      "\$"+cubit.allJobs[0][1]['salary'],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(46, 142, 24, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                      ),
                  ),
                   ),
                  const Text(
                    "/Month",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

            SizedBox(
              height: 103.h,
              width: 327.w,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(cubit.allJobs[0][2]["image"],scale: 32,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  JobDetails(
                                jobName: cubit.allJobs[0][2]['name'],
                                jobTime: cubit.allJobs[0][2]['job_time_type'],
                                jobType: cubit.allJobs[0][2]['job_type'],
                                compEmail: cubit.allJobs[0][2]['comp_email'],
                                compInfo: cubit.allJobs[0][2]['about_comp'],
                                compName: cubit.allJobs[0][2]['comp_name'],
                                compWeb: cubit.allJobs[0][2]['comp_website'],
                                jobDesc: cubit.allJobs[0][2]['job_description'],
                                jobImg: cubit.allJobs[0][2]['image'],
                                jobLvl: cubit.allJobs[0][2]['job_level'],
                                jobSkill: cubit.allJobs[0][2]['job_skill'],

                              )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w, right: 95.w),
                          child: Column(
                            children: [
                               Text(
                                cubit.allJobs[0][2]["name"],
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
                                "flutter • Jakarta, Indonesia ",
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          // right: 24.w,
                          top: 10.5.h,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            if(s2){
                              await cubit.addFavorites(
                                  context,
                                  jobId: "2"
                              );
                              await cubit.getAllFavorites(context);
                            }else{
                              await cubit.deleteFavorite(context,jobid: cubit.job3FavId.toString());
                            }
                            setState(() {

                              if(s2){

                                s2=false;
                              }
                              else
                              {
                                s2=true;
                              }
                            });

                          },
                          child: SvgPicture.asset(
                            s2?'assets/Icons/savedBlack.svg':'assets/Icons/savedBlue.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            cubit.allJobs[0][2]["job_time_type"],
                            textAlign: TextAlign.left,
                            style: TextStyle(
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
                              cubit.allJobs[0][2]["job_type"],
                              textAlign: TextAlign.left,
                              style: TextStyle(
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
                        padding: const EdgeInsets.only(left: 80),
                        child:  Text(
                          "\$"+cubit.allJobs[0][2]['salary'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(46, 142, 24, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ),
                      const Text(
                        "/Month",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 103.h,
              width: 327.w,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(cubit.allJobs[0][0]["image"],scale: 32,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  JobDetails(
                                jobName: cubit.allJobs[0][0]['name'],
                                jobTime: cubit.allJobs[0][0]['job_time_type'],
                                jobType: cubit.allJobs[0][0]['job_type'],
                                compEmail: cubit.allJobs[0][0]['comp_email'],
                                compInfo: cubit.allJobs[0][0]['about_comp'],
                                compName: cubit.allJobs[0][0]['comp_name'],
                                compWeb: cubit.allJobs[0][0]['comp_website'],
                                jobDesc: cubit.allJobs[0][0]['job_description'],
                                jobImg: cubit.allJobs[0][0]['image'],
                                jobLvl: cubit.allJobs[0][0]['job_level'],
                                jobSkill: cubit.allJobs[0][0]['job_skill'],

                              )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w, right: 95.w),
                          child: Column(
                            children: [
                              Text(
                                cubit.allJobs[0][0]["name"],
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
                                "Test Engineer • Jakarta ",
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          // right: 24.w,
                          top: 10.5.h,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            if(s3){
                              await cubit.addFavorites(
                                  context,
                                  jobId: "4"
                              );
                              await cubit.getAllFavorites(context);
                            }else{
                              await cubit.deleteFavorite(context,jobid: cubit.job1FavId.toString());
                            }
                            setState(()  {
                              if(s3){

                                s3=false;
                              }
                              else
                              {

                                s3=true;
                              }
                            });

                          },
                          child: SvgPicture.asset(
                            s3?'assets/Icons/savedBlack.svg':'assets/Icons/savedBlue.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            cubit.allJobs[0][0]["job_time_type"],
                            textAlign: TextAlign.left,
                            style: TextStyle(
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
                              cubit.allJobs[0][0]["job_type"],
                              textAlign: TextAlign.left,
                              style: TextStyle(
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
                        padding: const EdgeInsets.only(left: 80),
                        child:  Text(
                          "\$"+cubit.allJobs[0][0]['salary'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(46, 142, 24, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ),
                      const Text(
                        "/Month",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            //const RecentJobCard3(),
          ],
        ),
      )),
    );

});
}}

