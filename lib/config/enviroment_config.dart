class EnvironmentConfig {
  static const appName =
      String.fromEnvironment('APP_NAME', defaultValue: 'awesomeApp');
  static const appSuffix = String.fromEnvironment('APP_SUFFIX');
}
