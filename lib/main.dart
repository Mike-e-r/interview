import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/views/pages/home/SupportMainPage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api-prod.joyflo.com",
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true, maxWidth: 180));

  Get.put<Dio>(dio, permanent: true, tag: "dio");

  runApp(const JoyFloApp());
}

class JoyFloApp extends StatelessWidget {
  const JoyFloApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'JoyFlo',
      locale: const Locale('it', 'IT'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primaryColor),
        useMaterial3: true,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: CustomColors.primaryColor,
          selectionColor: CustomColors.primaryColor.withOpacity(0.2),
          selectionHandleColor: CustomColors.primaryColor,
        ),
      ),
      defaultTransition: Transition.cupertino,
      home: const SafeArea(
        child: AnnotatedRegion(
          value: SystemUiOverlayStyle(
            statusBarColor: CustomColors.primaryColor,
            statusBarIconBrightness: Brightness.light,
          ),
          child: SupportMainPage(),
        ),
      ),
    );
  }
}
