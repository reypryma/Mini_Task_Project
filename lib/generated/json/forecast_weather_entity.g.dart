import 'package:webmiss/generated/json/base/json_convert_content.dart';
import 'package:webmiss/model/forecast_weather_entity.dart';

ForecastWeatherEntity $ForecastWeatherEntityFromJson(Map<String, dynamic> json) {
	final ForecastWeatherEntity forecastWeatherEntity = ForecastWeatherEntity();
	final String? cod = jsonConvert.convert<String>(json['cod']);
	if (cod != null) {
		forecastWeatherEntity.cod = cod;
	}
	final int? message = jsonConvert.convert<int>(json['message']);
	if (message != null) {
		forecastWeatherEntity.message = message;
	}
	final int? cnt = jsonConvert.convert<int>(json['cnt']);
	if (cnt != null) {
		forecastWeatherEntity.cnt = cnt;
	}
	final List<ForecastWeatherList>? list = jsonConvert.convertListNotNull<ForecastWeatherList>(json['list']);
	if (list != null) {
		forecastWeatherEntity.list = list;
	}
	final ForecastWeatherCity? city = jsonConvert.convert<ForecastWeatherCity>(json['city']);
	if (city != null) {
		forecastWeatherEntity.city = city;
	}
	return forecastWeatherEntity;
}

Map<String, dynamic> $ForecastWeatherEntityToJson(ForecastWeatherEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['cod'] = entity.cod;
	data['message'] = entity.message;
	data['cnt'] = entity.cnt;
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	data['city'] = entity.city?.toJson();
	return data;
}

ForecastWeatherList $ForecastWeatherListFromJson(Map<String, dynamic> json) {
	final ForecastWeatherList forecastWeatherList = ForecastWeatherList();
	final int? dt = jsonConvert.convert<int>(json['dt']);
	if (dt != null) {
		forecastWeatherList.dt = dt;
	}
	final ForecastWeatherListMain? main = jsonConvert.convert<ForecastWeatherListMain>(json['main']);
	if (main != null) {
		forecastWeatherList.main = main;
	}
	final List<ForecastWeatherListWeather>? weather = jsonConvert.convertListNotNull<ForecastWeatherListWeather>(json['weather']);
	if (weather != null) {
		forecastWeatherList.weather = weather;
	}
	final ForecastWeatherListClouds? clouds = jsonConvert.convert<ForecastWeatherListClouds>(json['clouds']);
	if (clouds != null) {
		forecastWeatherList.clouds = clouds;
	}
	final ForecastWeatherListWind? wind = jsonConvert.convert<ForecastWeatherListWind>(json['wind']);
	if (wind != null) {
		forecastWeatherList.wind = wind;
	}
	final int? visibility = jsonConvert.convert<int>(json['visibility']);
	if (visibility != null) {
		forecastWeatherList.visibility = visibility;
	}
	final double? pop = jsonConvert.convert<double>(json['pop']);
	if (pop != null) {
		forecastWeatherList.pop = pop;
	}
	final ForecastWeatherListRain? rain = jsonConvert.convert<ForecastWeatherListRain>(json['rain']);
	if (rain != null) {
		forecastWeatherList.rain = rain;
	}
	final ForecastWeatherListSys? sys = jsonConvert.convert<ForecastWeatherListSys>(json['sys']);
	if (sys != null) {
		forecastWeatherList.sys = sys;
	}
	final String? dtTxt = jsonConvert.convert<String>(json['dt_txt']);
	if (dtTxt != null) {
		forecastWeatherList.dtTxt = dtTxt;
	}
	return forecastWeatherList;
}

Map<String, dynamic> $ForecastWeatherListToJson(ForecastWeatherList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['dt'] = entity.dt;
	data['main'] = entity.main?.toJson();
	data['weather'] =  entity.weather?.map((v) => v.toJson()).toList();
	data['clouds'] = entity.clouds?.toJson();
	data['wind'] = entity.wind?.toJson();
	data['visibility'] = entity.visibility;
	data['pop'] = entity.pop;
	data['rain'] = entity.rain?.toJson();
	data['sys'] = entity.sys?.toJson();
	data['dt_txt'] = entity.dtTxt;
	return data;
}

ForecastWeatherListMain $ForecastWeatherListMainFromJson(Map<String, dynamic> json) {
	final ForecastWeatherListMain forecastWeatherListMain = ForecastWeatherListMain();
	final double? temp = jsonConvert.convert<double>(json['temp']);
	if (temp != null) {
		forecastWeatherListMain.temp = temp;
	}
	final double? feelsLike = jsonConvert.convert<double>(json['feels_like']);
	if (feelsLike != null) {
		forecastWeatherListMain.feelsLike = feelsLike;
	}
	final double? tempMin = jsonConvert.convert<double>(json['temp_min']);
	if (tempMin != null) {
		forecastWeatherListMain.tempMin = tempMin;
	}
	final double? tempMax = jsonConvert.convert<double>(json['temp_max']);
	if (tempMax != null) {
		forecastWeatherListMain.tempMax = tempMax;
	}
	final int? pressure = jsonConvert.convert<int>(json['pressure']);
	if (pressure != null) {
		forecastWeatherListMain.pressure = pressure;
	}
	final int? seaLevel = jsonConvert.convert<int>(json['sea_level']);
	if (seaLevel != null) {
		forecastWeatherListMain.seaLevel = seaLevel;
	}
	final int? grndLevel = jsonConvert.convert<int>(json['grnd_level']);
	if (grndLevel != null) {
		forecastWeatherListMain.grndLevel = grndLevel;
	}
	final int? humidity = jsonConvert.convert<int>(json['humidity']);
	if (humidity != null) {
		forecastWeatherListMain.humidity = humidity;
	}
	final double? tempKf = jsonConvert.convert<double>(json['temp_kf']);
	if (tempKf != null) {
		forecastWeatherListMain.tempKf = tempKf;
	}
	return forecastWeatherListMain;
}

Map<String, dynamic> $ForecastWeatherListMainToJson(ForecastWeatherListMain entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['temp'] = entity.temp;
	data['feels_like'] = entity.feelsLike;
	data['temp_min'] = entity.tempMin;
	data['temp_max'] = entity.tempMax;
	data['pressure'] = entity.pressure;
	data['sea_level'] = entity.seaLevel;
	data['grnd_level'] = entity.grndLevel;
	data['humidity'] = entity.humidity;
	data['temp_kf'] = entity.tempKf;
	return data;
}

ForecastWeatherListWeather $ForecastWeatherListWeatherFromJson(Map<String, dynamic> json) {
	final ForecastWeatherListWeather forecastWeatherListWeather = ForecastWeatherListWeather();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		forecastWeatherListWeather.id = id;
	}
	final String? main = jsonConvert.convert<String>(json['main']);
	if (main != null) {
		forecastWeatherListWeather.main = main;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		forecastWeatherListWeather.description = description;
	}
	final String? icon = jsonConvert.convert<String>(json['icon']);
	if (icon != null) {
		forecastWeatherListWeather.icon = icon;
	}
	return forecastWeatherListWeather;
}

Map<String, dynamic> $ForecastWeatherListWeatherToJson(ForecastWeatherListWeather entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['main'] = entity.main;
	data['description'] = entity.description;
	data['icon'] = entity.icon;
	return data;
}

ForecastWeatherListClouds $ForecastWeatherListCloudsFromJson(Map<String, dynamic> json) {
	final ForecastWeatherListClouds forecastWeatherListClouds = ForecastWeatherListClouds();
	final int? all = jsonConvert.convert<int>(json['all']);
	if (all != null) {
		forecastWeatherListClouds.all = all;
	}
	return forecastWeatherListClouds;
}

Map<String, dynamic> $ForecastWeatherListCloudsToJson(ForecastWeatherListClouds entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['all'] = entity.all;
	return data;
}

ForecastWeatherListWind $ForecastWeatherListWindFromJson(Map<String, dynamic> json) {
	final ForecastWeatherListWind forecastWeatherListWind = ForecastWeatherListWind();
	final double? speed = jsonConvert.convert<double>(json['speed']);
	if (speed != null) {
		forecastWeatherListWind.speed = speed;
	}
	final int? deg = jsonConvert.convert<int>(json['deg']);
	if (deg != null) {
		forecastWeatherListWind.deg = deg;
	}
	final double? gust = jsonConvert.convert<double>(json['gust']);
	if (gust != null) {
		forecastWeatherListWind.gust = gust;
	}
	return forecastWeatherListWind;
}

Map<String, dynamic> $ForecastWeatherListWindToJson(ForecastWeatherListWind entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['speed'] = entity.speed;
	data['deg'] = entity.deg;
	data['gust'] = entity.gust;
	return data;
}

ForecastWeatherListRain $ForecastWeatherListRainFromJson(Map<String, dynamic> json) {
	final ForecastWeatherListRain forecastWeatherListRain = ForecastWeatherListRain();
	final double? x3h = jsonConvert.convert<double>(json['3h']);
	if (x3h != null) {
		forecastWeatherListRain.x3h = x3h;
	}
	return forecastWeatherListRain;
}

Map<String, dynamic> $ForecastWeatherListRainToJson(ForecastWeatherListRain entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['3h'] = entity.x3h;
	return data;
}

ForecastWeatherListSys $ForecastWeatherListSysFromJson(Map<String, dynamic> json) {
	final ForecastWeatherListSys forecastWeatherListSys = ForecastWeatherListSys();
	final String? pod = jsonConvert.convert<String>(json['pod']);
	if (pod != null) {
		forecastWeatherListSys.pod = pod;
	}
	return forecastWeatherListSys;
}

Map<String, dynamic> $ForecastWeatherListSysToJson(ForecastWeatherListSys entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['pod'] = entity.pod;
	return data;
}

ForecastWeatherCity $ForecastWeatherCityFromJson(Map<String, dynamic> json) {
	final ForecastWeatherCity forecastWeatherCity = ForecastWeatherCity();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		forecastWeatherCity.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		forecastWeatherCity.name = name;
	}
	final ForecastWeatherCityCoord? coord = jsonConvert.convert<ForecastWeatherCityCoord>(json['coord']);
	if (coord != null) {
		forecastWeatherCity.coord = coord;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		forecastWeatherCity.country = country;
	}
	final int? population = jsonConvert.convert<int>(json['population']);
	if (population != null) {
		forecastWeatherCity.population = population;
	}
	final int? timezone = jsonConvert.convert<int>(json['timezone']);
	if (timezone != null) {
		forecastWeatherCity.timezone = timezone;
	}
	final int? sunrise = jsonConvert.convert<int>(json['sunrise']);
	if (sunrise != null) {
		forecastWeatherCity.sunrise = sunrise;
	}
	final int? sunset = jsonConvert.convert<int>(json['sunset']);
	if (sunset != null) {
		forecastWeatherCity.sunset = sunset;
	}
	return forecastWeatherCity;
}

Map<String, dynamic> $ForecastWeatherCityToJson(ForecastWeatherCity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['coord'] = entity.coord?.toJson();
	data['country'] = entity.country;
	data['population'] = entity.population;
	data['timezone'] = entity.timezone;
	data['sunrise'] = entity.sunrise;
	data['sunset'] = entity.sunset;
	return data;
}

ForecastWeatherCityCoord $ForecastWeatherCityCoordFromJson(Map<String, dynamic> json) {
	final ForecastWeatherCityCoord forecastWeatherCityCoord = ForecastWeatherCityCoord();
	final double? lat = jsonConvert.convert<double>(json['lat']);
	if (lat != null) {
		forecastWeatherCityCoord.lat = lat;
	}
	final double? lon = jsonConvert.convert<double>(json['lon']);
	if (lon != null) {
		forecastWeatherCityCoord.lon = lon;
	}
	return forecastWeatherCityCoord;
}

Map<String, dynamic> $ForecastWeatherCityCoordToJson(ForecastWeatherCityCoord entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['lat'] = entity.lat;
	data['lon'] = entity.lon;
	return data;
}