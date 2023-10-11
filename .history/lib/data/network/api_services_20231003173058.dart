import 'package:http/http.dart' as http;

import '../../model/currencies_model.dart';
import '../../model/rates_model.dart';
import '../../res/app_url.dart';
import '../../res/flavor_config.dart';

Future<RatesModel> fetchRates() async {
  var response = await http.get(Uri.parse(FlavorConfig().getFlavor().ratesUrl));
  final ratesModel = ratesModelFromJson(response.body);
  return ratesModel;
}

Future<Map> fetchCurrencies() async {
  var response = await http.get(Uri.parse(AppUrl.currenciesUrl));
  final allCurrencies = allCurrenciesFromJson(response.body);
  return allCurrencies;
}
