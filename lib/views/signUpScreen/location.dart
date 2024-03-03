import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder_app/controllers/widgets/Tags.dart';
import 'package:jobfinder_app/views/signUpScreen/accountCreated.dart';

import '../../controllers/widgets/primaryButton.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool state = true;
  bool state1 = true;
  bool us = true;
  bool mal = true;
  bool sing = true;
  bool indo = true;
  bool phil = true;
  bool pol = true;
  bool ind = true;
  bool viet = true;
  bool can = true;
  bool saudi = true;
  bool argan = true;
  bool brazil = true;
  bool chai = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 327,
                height: 122,
                child: Column(
                  children: [
                    SizedBox(
                      width: 327,
                      height: 68,
                      child: Text(
                        "Where are you prefefred Location?",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF Pro Display"),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 327,
                      height: 42,
                      child: Text(
                        "Let us know, where is the work location you want at this time, so we can adjust it.",
                        style: TextStyle(
                            fontFamily: "SF Pro Display",
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                  width: 327,
                  height: 46,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            state = !state;
                          });
                        },
                        child: Container(
                          width: 160.5,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: state
                                  ? const Color.fromRGBO(244, 244, 245, 1)
                                  : const Color.fromRGBO(9, 26, 122, 1)),
                          child: Center(
                            child: Text(
                              "Work From Office",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "SF Pro Display",
                                  color: state ? Colors.black : Colors.white),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            state = !state;
                          });
                        },
                        child: Container(
                          width: 160.5,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: state
                                  ? const Color.fromRGBO(9, 26, 122, 1)
                                  : const Color.fromRGBO(244, 244, 245, 1)),
                          child: Center(
                            child: Text(
                              "Remote Work",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "SF Pro Display",
                                  color: state ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 12,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Select the country you want for your job",
                    style: TextStyle(
                        fontFamily: "SF Pro Display",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(115, 115, 121, 1)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              us = !us;
                            });
                          },
                          child: Tags(
                              w: 151,
                              h: 42,
                              r: us ? 229 : 214,
                              g: us ? 231 : 228,
                              b: us ? 235 : 255,
                              o: 1,
                              txt: "United States")),
                      Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  mal = !mal;
                                });
                              },
                              child: Tags(
                                  w: 119,
                                  h: 42,
                                  r: mal ? 229 : 214,
                                  g: mal ? 231 : 228,
                                  b: mal ? 235 : 255,
                                  o: 1,
                                  txt: "Malaysia"))),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              sing = !sing;
                            });
                          },
                          child: Tags(
                              w: 128,
                              h: 42,
                              r: sing ? 229 : 214,
                              g: sing ? 231 : 228,
                              b: sing ? 235 : 255,
                              o: 1,
                              txt: "Singapore")),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                indo = !indo;
                              });
                            },
                            child: Tags(
                                w: 125,
                                h: 42,
                                r: indo ? 229 : 214,
                                g: indo ? 231 : 228,
                                b: indo ? 235 : 255,
                                o: 1,
                                txt: "Indonesia")),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              phil = !phil;
                            });
                          },
                          child: Tags(
                              w: 133,
                              h: 42,
                              r: phil ? 229 : 214,
                              g: phil ? 231 : 228,
                              b: phil ? 235 : 255,
                              o: 1,
                              txt: "Philiphines")),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                pol = !pol;
                              });
                            },
                            child: Tags(
                                w: 117,
                                h: 42,
                                r: pol ? 229 : 214,
                                g: pol ? 231 : 228,
                                b: pol ? 235 : 255,
                                o: 1,
                                txt: "Polandia")),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              ind = !ind;
                            });
                          },
                          child: Tags(
                              w: 91,
                              h: 42,
                              r: ind ? 229 : 214,
                              g: ind ? 231 : 228,
                              b: ind ? 235 : 255,
                              o: 1,
                              txt: "India")),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                viet = !viet;
                              });
                            },
                            child: Tags(
                                w: 115,
                                h: 42,
                                r: viet ? 229 : 214,
                                g: viet ? 231 : 228,
                                b: viet ? 235 : 255,
                                o: 1,
                                txt: "Vietnam")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                chai = !chai;
                              });
                            },
                            child: Tags(
                                w: 98,
                                h: 42,
                                r: chai ? 229 : 214,
                                g: chai ? 231 : 228,
                                b: chai ? 235 : 255,
                                o: 1,
                                txt: "China")),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              can = !can;
                            });
                          },
                          child: Tags(
                              w: 112,
                              h: 42,
                              r: can ? 229 : 214,
                              g: can ? 231 : 228,
                              b: can ? 235 : 255,
                              o: 1,
                              txt: "Canada")),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                saudi = !saudi;
                              });
                            },
                            child: Tags(
                                w: 145,
                                h: 42,
                                r: saudi ? 229 : 214,
                                g: saudi ? 231 : 228,
                                b: saudi ? 235 : 255,
                                o: 1,
                                txt: "Saudi Arabia")),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              argan = !argan;
                            });
                          },
                          child: Tags(
                              w: 124,
                              h: 42,
                              r: argan ? 229 : 214,
                              g: argan ? 231 : 228,
                              b: argan ? 235 : 255,
                              o: 1,
                              txt: "Argentina")),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                brazil = !brazil;
                              });
                            },
                            child: Tags(
                                w: 96,
                                h: 42,
                                r: brazil ? 229 : 214,
                                g: brazil ? 231 : 228,
                                b: brazil ? 235 : 255,
                                o: 1,
                                txt: "Brazil")),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.h),
                    child: PrimaryButton(
                        title: 'Next',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AccountCreated()));
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
