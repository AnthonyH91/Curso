import 'package:flutter/material.dart';

class ChipDisen extends StatelessWidget {
  const ChipDisen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/juegoChips',
        );
      },
      avatar: const Icon(
        Icons.play_circle,
        //color: Colors.deepPurple,
      ),
      label: const Text('Jugar'),
    );
  }
}
