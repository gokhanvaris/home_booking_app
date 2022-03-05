import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.title,
    required this.theme,
  }) : super(key: key);
  final String title;
  final TextStyle? theme;
  @override
  Widget build(BuildContext context) {
    return Text(
      title.tr(),
      style: theme ?? const TextStyle(),
    );
  }
}
