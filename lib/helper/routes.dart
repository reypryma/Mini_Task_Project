import 'package:flutter/material.dart';
import 'package:webmiss/pages/fizz_page.dart';
import 'package:webmiss/pages/weather_page.dart';

class Routes {

  static const fizzPageRoute = 'fizz_page';
  static const forecastRoute = 'forecast_page';

 Map<String, WidgetBuilder> routes = {
   fizzPageRoute: (context) => const FizzPage(textInput: 100),
   forecastRoute: (context) => const WeatherPage(),
 };

}
