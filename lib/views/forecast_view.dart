import 'package:api/model/APIResponse.dart';
import 'package:api/model/GroupedWeather.dart';
import 'package:api/services/DataConverter.dart';
import 'package:api/views/current_weather.dart';
import 'package:api/views/daily_tile.dart';
import 'package:flutter/material.dart';

class ForecastView extends StatelessWidget {
  final APIResponse response;

  const ForecastView({required this.response});

  @override
  Widget build(BuildContext context) {
    List<GroupedWeather> byDay = DataConverter().byDay(response);
    return Column(
      children: [
        Currentweather(forecast: response.list.first),
        Expanded(
            child: ListView.builder(
                itemBuilder: ((context, index) => DailyTile(day: byDay[index])),
                itemCount: byDay.length))
      ],
    );
  }
}
