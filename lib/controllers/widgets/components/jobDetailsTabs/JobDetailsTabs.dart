import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/widgets/components/jobDetailsTabs/JobDetailsCompany.dart';
import 'package:jobfinder_app/controllers/widgets/components/jobDetailsTabs/JobDetailsDescription.dart';

class JobDetailsTabs extends StatefulWidget {
  const JobDetailsTabs({Key? key,required this.jobDesc,required this.jobSkill,required this.compEmail,required this.compWeb,required this.compInfo}) : super(key: key);
  final String jobDesc;
  final String jobSkill;
  final String compEmail;
  final String compWeb;
  final String compInfo;
  @override
  State<JobDetailsTabs> createState() => _JobDetailsTabsState();
}

class _JobDetailsTabsState extends State<JobDetailsTabs>
    with TickerProviderStateMixin {
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
    return Column(
      children: [
        Container(
          width: 327.w,
          height: 46.h,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(244, 244, 245, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(24.r),
            ),
          ),
          child: DefaultTabController(
            length: 3,
            child: TabBar(
              controller: _controller,
              indicator: BoxDecoration(
                color: const Color.fromRGBO(
                    2, 51, 122, 1), // Blue color for the active tab
                borderRadius: BorderRadius.circular(24.r),
              ),
              indicatorColor: Colors.transparent,
              unselectedLabelColor: const Color.fromRGBO(107, 114, 128, 1),
              labelColor: Colors.white,
              labelStyle: const TextStyle(
                color: Color.fromRGBO(51, 102, 255, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'SF Pro Display',
              ),
              tabs: const [
                Tab(
                  text: 'Description',
                ),
                Tab(text: 'Company'),
                Tab(text: 'People'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 500.h,
          child: TabBarView(
            controller: _controller,
            children:  [
              JobDetailsDescription(
                jobSkill: widget.jobSkill,
                jobDesc: widget.jobDesc,
              ),
              JobDetailsCompany(
                compWeb: widget.compWeb,
                compInfo: widget.compInfo,
                compEmail: widget.compEmail,
              ),
              Center(
                child: Text('People Content Preview'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
