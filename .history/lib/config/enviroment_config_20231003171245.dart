class EnvironmentConfig {
  static const APP_NAME =
      String.fromEnvironment('APP_NAME', defaultValue: 'awesomeApp');
  static const APP_SUFFIX = String.fromEnvironment('APP_SUFFIX');
}
