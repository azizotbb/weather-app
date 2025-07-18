import 'package:weather/features/weather/domain/entity/weather.dart';

class WeatherModel extends Weather{
  WeatherModel(super.id, super.cityName, super.pressure, super.main, super.description, super.temp);

  factory WeatherModel.fromJson(Map<String , dynamic> json)=> WeatherModel(
    json['id'] as int,
    json['name'] as String,
    json['main']['pressure'] as int,
    json['weather'][0]['main'] as String,
    json['weather'][0]['description'] as String,
    (json['main']['temp'] as num).toDouble(),
  );
}