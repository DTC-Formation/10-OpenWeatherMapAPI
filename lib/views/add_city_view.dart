import 'package:flutter/material.dart';

class AddCityView extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final Function(String) onAddCity;

  AddCityView({super.key, required this.onAddCity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: "Ajouter une ville"),
        )),
        IconButton(
            onPressed: (() => onAddCity(controller.text)),
            icon: Icon(
              Icons.send,
              color: Theme.of(context).primaryColorDark,
            ))
      ],
    );
  }
}
