import 'key.dart';

enum AppFlavor { dev, stg, prod }

extension AppFlavorExtension on AppFlavor {
  String get apiURL {
    switch (this) {
      case AppFlavor.dev:
        return "https://example.api.dev.com/";
      case AppFlavor.stg:
        return "https://example.api.stg.com/";
      case AppFlavor.prod:
        return "https://example.api.com/";
    }
  }
}

class AppUrl {
  static const String baseUrl = 'https://openexchangerates.org/api/';
  static const String currenciesUrl = '${baseUrl}currencies.json?app_id=$key';
  static const String ratesUrl = '${baseUrl}latest.json?base=USD&app_id=$key';
}
