import 'dart:convert';

import 'package:weather/core/utils/constance.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';


abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByCityName(String city);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel> getWeatherByCityName(String city) async{
    final dio = Dio();
    try{
  final response = await dio.get('${AppConstance.apiBaseUrl}/weather?q=${city}t&appid=${AppConstance.apiKey}');
  return WeatherModel.fromJson(jsonDecode(response.data));

    }catch(_){
      throw Exception('Failed to fetch weather data');
    }
  
  
  }}