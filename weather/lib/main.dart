import 'package:flutter/material.dart';
import 'package:weather/features/weather/data/repository/weather_repository.dart';
import 'package:weather/features/weather/domain/entity/weather.dart';
import 'package:weather/features/weather/domain/usecase/get_weather_by_city_name.dart';
import 'package:weather/features/weather/presentation/screen/weather_screen.dart';

void main() async{
  Weather weather = await GetWeatherByCityName(
    WeatherRepository(),
  ).execute('riyadh'); 
  print(weather.temp);
  runApp(MainApp(temperature: weather.temp , main: weather.main,));
}

class MainApp extends StatelessWidget {
  final double ?temperature;
    final String ?main;

  const MainApp({super.key, required this.temperature, this.main});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:WeatherScreen(temperature: temperature!, main: main!,) 
    );
  }
}
