import 'package:evently/config/theme/theme-manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'routing/app-routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Set status bar color to white
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white, // Background color
    statusBarIconBrightness: Brightness.dark, // Icons to be dark (visible on white)
    statusBarBrightness: Brightness.light, // Required for iOS
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          routes: RoutesNames.getRoutes(),
          initialRoute: RoutesNames.onBoarding,
          theme: ThemeManager.light,
          darkTheme: ThemeManager.dark,
          themeMode: ThemeMode.light
        );
      },
    );
  }
}
