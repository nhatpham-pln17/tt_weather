import 'package:tt_weather/model/weatherdata_current.dart';
import 'package:tt_weather/model/weatherdata_hourly.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  final WeatherDataHourly? hourly;

  WeatherData([
    this.current,
    this.hourly,
  ]);

  WeatherDataCurrent getCurrentWeather() => current!;
  WeatherDataHourly getHourlyWeather() => hourly!;
}
