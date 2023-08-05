import 'package:api/model/APIResponse.dart';
import 'package:api/services/DataConverter.dart';
import 'package:flutter/material.dart';

class Currentweather extends StatelessWidget {
  final Forecast forecast;
  const Currentweather({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height / 3,
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 7,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Image
                  Image.network(
                      DataConverter().fromIcon(forecast.weather.first.icon)),
                  Text("${forecast.main.temp.toInt()}°C",
                      style: Theme.of(context).textTheme.headlineLarge)
                ],
              ),
              const Spacer(),
              Text(
                forecast.weather.first.description,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Min: ${forecast.main.temp_min.toInt()}°C - Max: ${forecast.main.temp_max}°C",
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
