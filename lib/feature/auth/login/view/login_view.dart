import 'package:booking_home_app/utils/extensions/padding.dart';
import 'package:booking_home_app/utils/widgets/custom_button.dart';
import 'package:booking_home_app/utils/widgets/custom_sizedbox.dart';
import 'package:booking_home_app/utils/widgets/custom_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../utils/widgets/custom_textformfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController mailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const HomePadding.special(5, 5),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    title: 'welcome_text',
                    theme: Theme.of(context).textTheme.headline6,
                  ),
                  const CustomSizedBox(),
                  CustomText(
                    title: 'login_text',
                    theme: Theme.of(context).textTheme.headline4,
                  ),
                  const CustomSizedBox(),
                  CustomTextFormField(
                    secureText: false,
                    title: 'hint_mail',
                    textController: mailController,
                  ),
                  CustomTextFormField(
                    secureText: true,
                    title: 'hint_pass',
                    textController: passController,
                  ),
                  const CustomSizedBox(),
                  CustomText(
                    title: 'forgot_pass',
                    theme: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.black),
                  ),
                  const CustomSizedBox(),
                  const CustomButton(path: '/home', title: 'login_text'),
                  const CustomSizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        title: 'login_info',
                        theme: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black),
                      ),
                      const SizedBox(width: 5.0),
                      CustomText(
                        title: 'login_text',
                        theme: Theme.of(context).textTheme.headline4!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
