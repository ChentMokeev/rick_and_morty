import 'package:flutter/material.dart';

class ThemeAlertDialog extends StatefulWidget {
  const ThemeAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<ThemeAlertDialog> createState() => _ThemeAlertDialogState();
}

class _ThemeAlertDialogState extends State<ThemeAlertDialog> {
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Тёмная тема'),
      actions: [
        RadioListTile<int>(
          title: const Text('Выключена'),
          groupValue: val,
          onChanged: (value) {
            setState(() {
              val = value!;
            });
          },
          value: 0,
        ),
        RadioListTile<int>(
            title: const Text('Включена'),
            value: 1,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value!;
              });
            }),
        RadioListTile<int>(
            title: const Text('Следовать настройкам системы'),
            value: 2,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value!;
              });
            }),
        RadioListTile<int>(
            title: const Text('В режиме энергосбережения'),
            value: 3,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value!;
              });
            }),
      ],
    );
  }
}
