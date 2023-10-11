import 'package:currency_app/res/app_url.dart';
import 'package:flutter/material.dart';

import 'config/enviroment_config.dart';
import 'res/flavor_config.dart';
import 'view/home_screen.dart';

void main() {
  debugPrint('APP_NAME: ${EnvironmentConfig.appName}');
  debugPrint('APP_SUFFIX: ${EnvironmentConfig.appSuffix}');
  final appFlavor = FlavorConfig().getFlavor();
  debugPrint('ApiUrl: ${appFlavor.apiURL}');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Convertor',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, brightness: Brightness.dark),
          useMaterial3: true,
          fontFamily: 'Lato'),
      home: const HomeScreen(),
    );
  }
}
