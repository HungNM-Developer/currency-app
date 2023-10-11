import 'package:dio/dio.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:http/http.dart' as http;

import '../../model/currencies_model.dart';
import '../../model/rates_model.dart';
import '../../res/app_url.dart';
import '../../res/flavor_config.dart';

Future<RatesModel> fetchRates() async {
  final dio = Dio();
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      queryParameters: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      showProcessingTime: true,
      showCUrl: true,
      // canShowLog: kDebugMode,
    ),
  );
  var client = http.i;
  var response = await client.get(
    Uri.parse(FlavorConfig().getFlavor().ratesUrl),
  );
  final ratesModel = ratesModelFromJson(response.body);
  return ratesModel;
}

Future<Map> fetchCurrencies() async {
  var response = await http.get(
    Uri.parse(FlavorConfig().getFlavor().currenciesUrl),
  );
  final allCurrencies = allCurrenciesFromJson(response.body);
  return allCurrencies;
}
