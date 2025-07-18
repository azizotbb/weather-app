import 'package:weather/features/weather/data/datasources/remote_datasoource.dart';
import 'package:weather/features/weather/domain/entity/weather.dart';
import 'package:weather/features/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  @override
  Future<Weather> getWeatherByCityName(String city) {
    return RemoteDataSource().getWeatherByCityName(city);
  }
}