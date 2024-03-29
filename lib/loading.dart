import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const CircularProgressIndicator(
        color: Colors.black,
      ),
    );
  }
}
