import 'package:weather/features/weather/domain/entity/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String city);
}