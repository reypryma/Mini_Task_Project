class AppConfig {
  static const String apiUrl = "https://api.openweathermap.org/data/2.5/";
  static const String domainForecast = "${apiUrl}forecast?";
  static const String domainWeather = "${apiUrl}weather?";
  static const String apiKey = "38eaf2391754f7a07d9f020676299dd2";
  static const String sampleKey = "https://api.openweathermap.org/data/2.5/weather?";
  // api.openweathermap.org/data/2.5/forecast?id=524901&appid={API key}
}

class ApiConstant {
  static fetchForesightWeather({required double lat, required double lon, int daily = 5}) {
    String url = '${AppConfig.domainForecast}lat=${lat}&lon=${lon}&appid=${AppConfig.apiKey}';
    print("fetch forecast of $url");
    return url;
  }
}