import 'key.dart';

enum AppFlavor { dev, stg, prod }

extension AppFlavorExtension on AppFlavor {
  String get apiURL {
    switch (this) {
      case AppFlavor.dev:
        return "https://openexchangerates.org/api/";
      case AppFlavor.stg:
        return "https://openexchangerates.org/api/";
      case AppFlavor.prod:
        return "https://openexchangerates.org/api/";
    }
  }
}

class AppUrl {
  static const String baseUrl = 'https://openexchangerates.org/api/';
  static const String currenciesUrl = '${baseUrl}currencies.json?app_id=$key';
  static const String ratesUrl = '${baseUrl}latest.json?base=USD&app_id=$key';
}
