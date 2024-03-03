import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  bool b1=false;
  bool b2=false;
  bool b3=false;
  bool b4=false;
  bool b5=false;
  bool b6=false;
  bool b7=false;
  bool b8=false;
  bool b9=false;
  bool b10=false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 60.h,left: 24.w),
            child: Container(
              width: 327.w,
              height: 24.h,
              child: Row(
                children: [
                    Icon(Icons.arrow_back,size: 24,),
                  Padding(
                    padding:  EdgeInsets.only(left: 95.w),
                    child: Text("Language",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28,right: 24,left: 24),
            child: Container(
              width: 327,
              height: 64,
              child: ListTile(
                leading: Image.asset("assets/Images/flag1.png",
                  width: 30,
                  height: 20,

                ),
                title: Text("English"),
                trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b1=!b1;
                    });
                    await cubit.profLang(
                        context,
                      lang: "English"
                    );
                  },
                    child: Icon(b1?Icons.radio_button_checked:Icons.radio_button_off)),
              ),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag2.png",
                width: 30,
                height: 20,

              ),
              title: Text("Indonesia"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b2=!b2;
                    });
                    await cubit.profLang(
                        context,
                        lang: "Indonesia"
                    );
                  },
                  child: Icon(b2?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag3.png",
                width: 30,
                height: 20,

              ),
              title: Text("Arabic"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b3=!b3;
                    });
                    await cubit.profLang(
                        context,
                        lang: "Arabic"
                    );
                  },
                  child: Icon(b3?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag4.png",
                width: 30,
                height: 20,

              ),
              title: Text("Chinese"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b4=!b4;
                    });
                    await cubit.profLang(
                        context,
                        lang: "Chinese"
                    );
                  },
                  child: Icon(b4?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag5.png",
                width: 30,
                height: 20,

              ),
              title: Text("Dutch"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b5=!b5;
                    });
                    await cubit.profLang(
                        context,
                        lang: "Dutch"
                    );
                  },
                  child: Icon(b5?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag6.png",
                width: 30,
                height: 20,

              ),
              title: Text("French"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b6=!b6;
                    });
                    await cubit.profLang(
                        context,
                        lang: "French"
                    );
                  },
                  child: Icon(b6?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag7.png",
                width: 30,
                height: 20,

              ),
              title: Text("German"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b7=!b7;
                    });
                    await cubit.profLang(
                        context,
                        lang: "German"
                    );
                  },
                  child: Icon(b7?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag8.png",
                width: 30,
                height: 20,

              ),
              title: Text("Japanese"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b8=!b8;
                    });
                    await cubit.profLang(
                        context,
                        lang: "Japanese"
                    );
                  },
                  child: Icon(b8?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag9.png",
                width: 30,
                height: 20,

              ),
              title: Text("Korean"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b9=!b9;
                    });
                    await cubit.profLang(
                        context,
                        lang: "Korean"
                    );
                  },
                  child: Icon(b9?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
          Container(
            width: 327,
            height: 64,
            child: ListTile(
              leading: Image.asset("assets/Images/flag10.png",
                width: 30,
                height: 20,

              ),
              title: Text("Portuguese"),
              trailing: GestureDetector(
                  onTap: () async {
                    setState(() {
                      b10=!b10;
                    });
                    await cubit.profLang(
                        context,
                        lang: "Portuguese"
                    );
                  },
                  child: Icon(b10?Icons.radio_button_checked:Icons.radio_button_off)),
            ),
          ),
        ],
      ),
    );
    });
  }
}
