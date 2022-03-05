import 'package:booking_home_app/utils/constants/app_constant.dart';
import 'package:booking_home_app/utils/extensions/padding.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_sizedbox.dart';
import '../../../utils/widgets/custom_text.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildScaffold(context);
  }

  Scaffold _buildScaffold(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const HomePadding.medium(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ApplicationConstant.instance.splashBgImage),
            const CustomSizedBox(),
            CustomText(
              title: 'splash_title',
              theme: Theme.of(context).textTheme.headline6!,
            ),
            const CustomSizedBox(height: 20.0),
            CustomText(
              title: 'splash_body_text',
              theme: Theme.of(context).textTheme.headline5,
            ),
            const CustomSizedBox(),
            const CustomButton(path: '/login', title: 'splash_button_title'),
          ],
        ),
      ),
    );
  }
}
