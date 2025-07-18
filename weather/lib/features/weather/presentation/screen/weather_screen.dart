import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  final double temperature;
    final String main;

  const WeatherScreen({super.key, required this.temperature, required this.main});

  @override
  Widget build(BuildContext context) {
    final double celsius = temperature - 273.15;
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff2f3543),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              Text(
                'Saudi Arabia',
                style: TextStyle(color: Colors.white, fontSize: 24 , fontWeight: FontWeight.w700),
              ),
               Text(
                'Riyadh',
                style: TextStyle(color: Colors.white, fontSize: 24 ,),
              ),
              SizedBox(height: 100),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/6122/6122561.png',
                width: 150,
                height: 150,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                    celsius.toStringAsFixed(1),
                    style: TextStyle(color: Colors.white, fontSize: 60 , fontWeight: FontWeight.w700),
                                  ),
                    Text(
                    '°C',
                    style: TextStyle(color: Colors.white, fontSize: 24 , fontWeight:  FontWeight.w700),
                                  ),
                  ],
                ),
                Text( main ,style: TextStyle(fontSize: 23 , color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}