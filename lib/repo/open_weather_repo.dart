

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';

import 'package:webmiss/helper/constant.dart';
import 'package:webmiss/helper/custom_validation.dart';
import 'package:webmiss/model/forecast_weather_entity.dart';

class OpenWeatherRepo{
  Future<String>? getWeatherForecast({
    required double lat,
    required double lon,
    int day = 5,
  }) async{
    Uri uri = Uri.parse(ApiConstant.fetchForesightWeather(lat: lat, lon: lon));
    Response response = await get(uri, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    });
    if(response.statusCode == 200){
      int dayChange = 3;
      // return response.body;
      final decodeData = jsonDecode(response.body);
      ForecastWeatherEntity fr = ForecastWeatherEntity.fromJson(decodeData);
      List<ForecastWeatherList>? list_fr = [];

      for(var i = 0; i<5; i++){
        list_fr.add(fr.list![dayChange]);
        dayChange += 9;
      }

      String output = 'Weather Forecast of ${fr.city!.name!}\n';
      for (var item in list_fr) {
         output += "${getFormattedDate(item.dtTxt!)}: ${(item.main!.temp! - 273).toStringAsFixed(2)} °C\n";
      }
      return output;
    }
    return 'failed fetch';
  }
}