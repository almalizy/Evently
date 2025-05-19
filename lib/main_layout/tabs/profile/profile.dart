import 'package:evently/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedLang = "English";

  late ConfigProvider configProvider;

  @override
  Widget build(BuildContext context) {
    configProvider = Provider.of<ConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomProfileHeader(
            userName: "Muahmmed Saad", email: "mSaad@gmail.com"),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomDropDownMenu(
                title: AppLocalizations.of(context)!.language,
                textView: configProvider.isEnglish ? "English" : "عربي",
                menuItems: ["English", "عربي"],
                onChange: _onLanguageChange,
              ),
              SizedBox(height: 16.h),
              CustomDropDownMenu(
                  title: AppLocalizations.of(context)!.theme,
                  textView: configProvider.isDark
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light,
                  menuItems: [
                    AppLocalizations.of(context)!.light,
                    AppLocalizations.of(context)!.dark,
                  ],
                  onChange: _onThemeChange)
            ],
          ),
        )
      ],
    );
  }

  void _onThemeChange(String? newTheme) {
    /// change current theme based new theme
    configProvider.changeAppTheme(
        newTheme == AppLocalizations.of(context)!.light
            ? ThemeMode.light
            : ThemeMode.dark);
  }

  void _onLanguageChange(String? newLang) {
    String lang = newLang == "English" ? "en" : "ar";
    configProvider.changeAppLang(lang);
  }
}