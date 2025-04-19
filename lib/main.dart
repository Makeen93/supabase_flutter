import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:get/get.dart';
import 'package:subabase/views/auth/ui/login_view.dart';

import 'views/nav_bar/ui/main_home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeMode _themeMode = ThemeMode.system;

  bool get useLightMode {
    switch (_themeMode) {
      case ThemeMode.system:
        return SchedulerBinding.instance.window.platformBrightness ==
            Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Our Market'.tr,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kScaffoldColor,
          useMaterial3: true,
          brightness: Brightness.light,
        ),
        // darkTheme: ThemeData(
        //   useMaterial3: true,
        //   brightness: Brightness.dark,
        // ),
        // themeMode: _themeMode,
        home: MainHomeView());
  }
}
