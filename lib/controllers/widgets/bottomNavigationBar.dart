import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_app/views/appliedScreen/appliedScreen.dart';
import 'package:jobfinder_app/views/homeScreen/homeScreen.dart';
import 'package:jobfinder_app/views/messageScreen/messageScreen.dart';
import 'package:jobfinder_app/views/profileScreen/profileScreen.dart';
import 'package:jobfinder_app/views/savedScreen/savedScreen.dart';

import '../cubits/AuthCubit/States.dart';
import '../cubits/AuthCubit/cubit.dart';

class BottomNavigationBarJobFinder extends StatefulWidget {
  const BottomNavigationBarJobFinder({super.key});

  @override
  _BottomNavigationBarJobFinderState createState() =>
      _BottomNavigationBarJobFinderState();
}

class _BottomNavigationBarJobFinderState
    extends State<BottomNavigationBarJobFinder> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const MessageScreen(),
    const AppliedScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(51, 102, 255, 1),
        selectedLabelStyle: const TextStyle(
          color: Color.fromRGBO(51, 102, 255, 1),
          fontSize: 10,
          fontWeight: FontWeight.w500,
          fontFamily: 'SF Pro Display',
        ),
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromRGBO(156, 163, 175, 1),
        unselectedLabelStyle: const TextStyle(
            color: Color.fromRGBO(156, 163, 175, 1), fontSize: 10),
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) async {
          if(index==1){
            await cubit.getChatNotification(context);
            await cubit.getChatContent(context);
          }
          if(index==3){
            await cubit.getAllFavorites(context);
          }
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: SvgPicture.asset(
                'assets/Icons/homeActive.svg',
              ),
            ),
            backgroundColor: Colors.white,
            icon: SvgPicture.asset(
              'assets/Icons/home.svg',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: SvgPicture.asset(
                'assets/Icons/messageBlue.svg',
              ),
            ),
            icon: SvgPicture.asset(
              'assets/Icons/message.svg',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: SvgPicture.asset(
                'assets/Icons/caseBlue.svg',
              ),
            ),
            icon: SvgPicture.asset(
              'assets/Icons/case.svg',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Applied',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: SvgPicture.asset(
                'assets/Icons/savedBlue.svg',
              ),
            ),
            icon: SvgPicture.asset(
              'assets/Icons/saved.svg',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: SvgPicture.asset(
                'assets/Icons/profileBlue.svg',
              ),
            ),
            icon: SvgPicture.asset(
              'assets/Icons/profile.svg',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
    });
  }
}
