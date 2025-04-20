import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'views/auth/ui/login_view.dart';
import 'views/nav_bar/ui/main_home_view.dart';
import 'views/product_details/logic/cubit/authentication_cubit.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://rpishakqwfdhzfbhfmwk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJwaXNoYWtxd2ZkaHpmYmhmbXdrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDUwNjUyODAsImV4cCI6MjA2MDY0MTI4MH0.Fxkysvl2_OBpsJDyPlK21BQDPpVIWJ3GSXMZKxv8_gE',
  );
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
    return BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: MaterialApp(
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
          home: const LoginView()),
    );
  }
}
