import 'package:webmiss/generated/json/base/json_field.dart';
import 'package:webmiss/generated/json/forecast_weather_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ForecastWeatherEntity {
	String? cod;
	int? message;
	int? cnt;
	List<ForecastWeatherList>? list;
	ForecastWeatherCity? city;

	ForecastWeatherEntity();

	factory ForecastWeatherEntity.fromJson(Map<String, dynamic> json) => $ForecastWeatherEntityFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherEntityToJson(this);

	ForecastWeatherEntity copyWith({String? cod, int? message, int? cnt, List<ForecastWeatherList>? list, ForecastWeatherCity? city}) {
		return ForecastWeatherEntity()
			..cod= cod ?? this.cod
			..message= message ?? this.message
			..cnt= cnt ?? this.cnt
			..list= list ?? this.list
			..city= city ?? this.city;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherList {
	int? dt;
	ForecastWeatherListMain? main;
	List<ForecastWeatherListWeather>? weather;
	ForecastWeatherListClouds? clouds;
	ForecastWeatherListWind? wind;
	int? visibility;
	double? pop;
	ForecastWeatherListRain? rain;
	ForecastWeatherListSys? sys;
	@JSONField(name: "dt_txt")
	String? dtTxt;

	ForecastWeatherList();

	factory ForecastWeatherList.fromJson(Map<String, dynamic> json) => $ForecastWeatherListFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherListToJson(this);

	ForecastWeatherList copyWith({int? dt, ForecastWeatherListMain? main, List<ForecastWeatherListWeather>? weather, ForecastWeatherListClouds? clouds, ForecastWeatherListWind? wind, int? visibility, double? pop, ForecastWeatherListRain? rain, ForecastWeatherListSys? sys, String? dtTxt}) {
		return ForecastWeatherList()
			..dt= dt ?? this.dt
			..main= main ?? this.main
			..weather= weather ?? this.weather
			..clouds= clouds ?? this.clouds
			..wind= wind ?? this.wind
			..visibility= visibility ?? this.visibility
			..pop= pop ?? this.pop
			..rain= rain ?? this.rain
			..sys= sys ?? this.sys
			..dtTxt= dtTxt ?? this.dtTxt;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherListMain {
	double? temp;
	@JSONField(name: "feels_like")
	double? feelsLike;
	@JSONField(name: "temp_min")
	double? tempMin;
	@JSONField(name: "temp_max")
	double? tempMax;
	int? pressure;
	@JSONField(name: "sea_level")
	int? seaLevel;
	@JSONField(name: "grnd_level")
	int? grndLevel;
	int? humidity;
	@JSONField(name: "temp_kf")
	double? tempKf;

	ForecastWeatherListMain();

	factory ForecastWeatherListMain.fromJson(Map<String, dynamic> json) => $ForecastWeatherListMainFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherListMainToJson(this);

	ForecastWeatherListMain copyWith({double? temp, double? feelsLike, double? tempMin, double? tempMax, int? pressure, int? seaLevel, int? grndLevel, int? humidity, double? tempKf}) {
		return ForecastWeatherListMain()
			..temp= temp ?? this.temp
			..feelsLike= feelsLike ?? this.feelsLike
			..tempMin= tempMin ?? this.tempMin
			..tempMax= tempMax ?? this.tempMax
			..pressure= pressure ?? this.pressure
			..seaLevel= seaLevel ?? this.seaLevel
			..grndLevel= grndLevel ?? this.grndLevel
			..humidity= humidity ?? this.humidity
			..tempKf= tempKf ?? this.tempKf;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherListWeather {
	int? id;
	String? main;
	String? description;
	String? icon;

	ForecastWeatherListWeather();

	factory ForecastWeatherListWeather.fromJson(Map<String, dynamic> json) => $ForecastWeatherListWeatherFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherListWeatherToJson(this);

	ForecastWeatherListWeather copyWith({int? id, String? main, String? description, String? icon}) {
		return ForecastWeatherListWeather()
			..id= id ?? this.id
			..main= main ?? this.main
			..description= description ?? this.description
			..icon= icon ?? this.icon;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherListClouds {
	int? all;

	ForecastWeatherListClouds();

	factory ForecastWeatherListClouds.fromJson(Map<String, dynamic> json) => $ForecastWeatherListCloudsFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherListCloudsToJson(this);

	ForecastWeatherListClouds copyWith({int? all}) {
		return ForecastWeatherListClouds()
			..all= all ?? this.all;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherListWind {
	double? speed;
	int? deg;
	double? gust;

	ForecastWeatherListWind();

	factory ForecastWeatherListWind.fromJson(Map<String, dynamic> json) => $ForecastWeatherListWindFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherListWindToJson(this);

	ForecastWeatherListWind copyWith({double? speed, int? deg, double? gust}) {
		return ForecastWeatherListWind()
			..speed= speed ?? this.speed
			..deg= deg ?? this.deg
			..gust= gust ?? this.gust;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherListRain {
	@JSONField(name: "3h")
	double? x3h;

	ForecastWeatherListRain();

	factory ForecastWeatherListRain.fromJson(Map<String, dynamic> json) => $ForecastWeatherListRainFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherListRainToJson(this);

	ForecastWeatherListRain copyWith({double? x3h}) {
		return ForecastWeatherListRain()
			..x3h= x3h ?? this.x3h;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherListSys {
	String? pod;

	ForecastWeatherListSys();

	factory ForecastWeatherListSys.fromJson(Map<String, dynamic> json) => $ForecastWeatherListSysFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherListSysToJson(this);

	ForecastWeatherListSys copyWith({String? pod}) {
		return ForecastWeatherListSys()
			..pod= pod ?? this.pod;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherCity {
	int? id;
	String? name;
	ForecastWeatherCityCoord? coord;
	String? country;
	int? population;
	int? timezone;
	int? sunrise;
	int? sunset;

	ForecastWeatherCity();

	factory ForecastWeatherCity.fromJson(Map<String, dynamic> json) => $ForecastWeatherCityFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherCityToJson(this);

	ForecastWeatherCity copyWith({int? id, String? name, ForecastWeatherCityCoord? coord, String? country, int? population, int? timezone, int? sunrise, int? sunset}) {
		return ForecastWeatherCity()
			..id= id ?? this.id
			..name= name ?? this.name
			..coord= coord ?? this.coord
			..country= country ?? this.country
			..population= population ?? this.population
			..timezone= timezone ?? this.timezone
			..sunrise= sunrise ?? this.sunrise
			..sunset= sunset ?? this.sunset;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ForecastWeatherCityCoord {
	double? lat;
	double? lon;

	ForecastWeatherCityCoord();

	factory ForecastWeatherCityCoord.fromJson(Map<String, dynamic> json) => $ForecastWeatherCityCoordFromJson(json);

	Map<String, dynamic> toJson() => $ForecastWeatherCityCoordToJson(this);

	ForecastWeatherCityCoord copyWith({double? lat, double? lon}) {
		return ForecastWeatherCityCoord()
			..lat= lat ?? this.lat
			..lon= lon ?? this.lon;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}