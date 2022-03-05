import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    Key? key,
    this.height,
  }) : super(key: key);

  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height ?? 50.0);
  }
}
