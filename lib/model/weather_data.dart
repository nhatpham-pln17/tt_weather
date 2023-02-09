import 'package:tt_weather/model/weatherdata_current.dart';
import 'package:tt_weather/model/weatherdata_hourly.dart';
import 'package:tt_weather/model/weatherdata_daily.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  final WeatherDataHourly? hourly;
  final WeatherDataDaily? daily;

  WeatherData([
    this.current,
    this.hourly,
    this.daily,
  ]);

  WeatherDataCurrent getCurrentWeather() => current!;
  WeatherDataHourly getHourlyWeather() => hourly!;
  WeatherDataDaily getDailyWeather() => daily!;
}
