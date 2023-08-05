import 'package:api/model/GroupedWeather.dart';
import 'package:api/services/DataConverter.dart';
import 'package:flutter/material.dart';

class DailyTile extends StatelessWidget {
  final GroupedWeather day;

  const DailyTile({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).primaryColorLight,
        elevation: 7,
        child: ListTile(
          trailing: Image.network(DataConverter().fromIcon(day.icon)),
          leading: Text(day.day),
          title: Text(day.description),
          subtitle: Text(day.minAndMax()),
        ));
  }
}
