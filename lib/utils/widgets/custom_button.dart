import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.path,
    required this.title,
  }) : super(key: key);
  final String? path;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (path != null) {
            context.go(path!);
          }
        },
        child: Container(
          child: Center(
            child: CustomText(
              title: title,
              theme: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white, fontSize: 22.0),
            ),
          ),
          height: 52,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).primaryColor,
            boxShadow: const [
              BoxShadow(
                color: Color(0xff35a07f),
                offset: Offset(9, 9),
                blurRadius: 35,
                spreadRadius: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
