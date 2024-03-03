import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnBoardingDots extends StatelessWidget {
  OnBoardingDots({super.key, this.currentIndex});
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => Container(
            height: currentIndex == index ? 8 : 6,
            width: currentIndex == index ? 8 : 6,
            margin: const EdgeInsets.only(right: 7.7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentIndex == index
                    ? const Color.fromRGBO(51, 102, 255, 1)
                    : const Color.fromRGBO(173, 200, 255, 1)),
          ),
        ));
  }
}
