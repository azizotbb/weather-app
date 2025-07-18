import 'package:weather/features/weather/domain/entity/weather.dart';
import 'package:weather/features/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCityName {
  final BaseWeatherRepository repo ;

  GetWeatherByCityName(this.repo);  

  Future <Weather> execute(String city)async{
    return repo.getWeatherByCityName(city);
  }
}