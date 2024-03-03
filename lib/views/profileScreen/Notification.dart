import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Row(
              children: [
              Icon(Icons.arrow_back,size: 24,),
              Padding(
              padding: EdgeInsets.only(left: 120.w),
              child: Text("Notification",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),
                  ),
                 ],
                ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 32.h,left: 24.w,right: 24.w),
              child: Container(
                width: 375.w,
                height: 37.h,
                child: Padding(
                  padding:  EdgeInsets.only(right: 30.w),
                  child: Text("Job notification",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),

                  ),
                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("our Job Search Alert",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_on,
                  size: 50,
                  color: Colors.blue,



                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("Job Application Update",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_on,
                  size: 50,
                  color: Colors.blue,



                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("Job Application Reminders",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_off,
                  size: 50,
                  color: Color.fromRGBO(209, 213, 219, 1),




                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("Jobs You May Be Interested In",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_on,
                  size: 50,
                  color: Colors.blue,




                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("Job Seeker Updates",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_off,
                  size: 50,
                  color: Color.fromRGBO(209, 213, 219, 1),




                ),
              ),
            ),

            Container(
              width: 500.w,
              height: 36.h,
              color: Colors.grey[200],
              child: const Padding(
                padding: EdgeInsets.only(left: 18,top: 10),
                child: Text(
                  "Other notification",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "SF Pro Display"
                  ),
                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("Show Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_on,
                  size: 50,
                  color: Colors.blue,



                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("All Message",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_on,
                  size: 50,
                  color: Colors.blue,



                ),
              ),
            ),
            Container(
              width: 372.w,
              height: 62.h,
              child: ListTile(
                leading: Text("Message Nudges",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),

                ),
                trailing: Icon(Icons.toggle_on,
                  size: 50,
                  color: Colors.blue,



                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
