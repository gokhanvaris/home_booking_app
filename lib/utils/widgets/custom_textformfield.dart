import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../extensions/padding.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.secureText,
    required this.title,
    required this.textController,
  }) : super(key: key);

  final bool secureText;
  final String title;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const HomePadding.hight(),
      child: Container(
        child: TextFormField(
            controller: textController,
            obscureText: secureText,
            decoration: InputDecoration(
              hintText: title.tr(),
              suffixIcon: secureText ? const Icon(Icons.visibility_off) : null,
              prefixIcon: secureText
                  ? Icon(
                      Icons.password_outlined,
                      color: Theme.of(context).primaryColor,
                    )
                  : Icon(
                      Icons.mail_outline,
                      color: Theme.of(context).primaryColor,
                    ),
              border: InputBorder.none,
            )),
        height: 49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              offset: const Offset(1, 1),
              blurRadius: 22,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
