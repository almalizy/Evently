import 'package:evently/core/widgets/custom_elevated_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool securePassword = true;
  bool secureRePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.register,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Image.asset(AppImages.logo)),
          Expanded(
              flex: 4,
              child: Padding(
                padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextFormField(
                        keyboardType: TextInputType.name,
                        labelText: AppLocalizations.of(context)!.name,
                        prefixIcon: Icons.person),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        labelText: AppLocalizations.of(context)!.email,
                        prefixIcon: Icons.email_rounded),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      labelText: AppLocalizations.of(context)!.password,
                      prefixIcon: Icons.lock,
                      suffixIcon: securePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      isSecure: securePassword,
                      onClick: _onPasswordIconClick,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      labelText: AppLocalizations.of(context)!.re_password,
                      prefixIcon: Icons.lock,
                      suffixIcon: secureRePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      isSecure: secureRePassword,
                      onClick: _onRePasswordIconClick,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomElevatedButton(
                        title: AppLocalizations.of(context)!.register,
                        onPress: () {})
                  ],
                ),
              ))
        ],
      ),
    );
  }

  void _onPasswordIconClick() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onRePasswordIconClick() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }
}