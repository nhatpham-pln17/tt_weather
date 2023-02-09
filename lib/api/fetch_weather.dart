import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:tt_weather/api/api_key.dart';
import 'package:tt_weather/model/weather_data.dart';
import 'package:tt_weather/model/weatherdata_current.dart';
import 'package:tt_weather/model/weatherdata_hourly.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
      WeatherDataCurrent.fromJson(jsonString),
      WeatherDataHourly.fromJson(jsonString),
    );

    return weatherData!;
  }
}

String apiURL(var lat, var lon) {
  String url;

  url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apiKey&units=metric&exclude=minutely";
  return url;
}
