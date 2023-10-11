import 'package:flutter/material.dart';

import '../config/enviroment_config.dart';
import 'app_url.dart';

class FlavorConfig {
  // 1
  AppFlavor getFlavor() {
    // const methodChannel = MethodChannel('app_chat_ui');
    // final flavor = await methodChannel.invokeMethod<String>('getFlavor');
    if (EnvironmentConfig.appSuffix == '.dev') {
      debugPrint('Flavor: dev');
      return AppFlavor.dev;
    } else if (EnvironmentConfig.appSuffix == '.stg') {
      debugPrint('Flavor: staging');
      return AppFlavor.stg;
    } else if (EnvironmentConfig.appSuffix.isEmpty) {
      debugPrint('Flavor: product');
      return AppFlavor.prod;
    }
    return AppFlavor.dev;
  }
}
