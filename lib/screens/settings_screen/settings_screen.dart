import 'package:flutter/material.dart';
import 'package:rick_and_morty/screens/settings_screen/widgets/theme_alert_dialog.dart';

import 'widgets/img_and_name.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImgAndName(),
              const SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Редактировать'),
                ),
              ),
              const Divider(height: 72),
              const Text('Внешний вид'),
              ListTile(
                leading: const Icon(Icons.palette_outlined),
                title: const Text('Тёмная тема'),
                subtitle: const Text('Включена'),
                trailing: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => const ThemeAlertDialog(),
                  ),
                ),
              ),
              const Divider(height: 72),
              const Text('О приложении'),
              const SizedBox(height: 24),
              const Text(
                  '''Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.'''),
              const Divider(height: 72),
              const Text('Версия приложения'),
              const SizedBox(height: 24),
              const Text('Rick & Morty v1.0.0'),
            ],
          ),
        ),
      ),
    );
  }
}
