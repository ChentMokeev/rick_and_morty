import 'package:flutter/material.dart';
import 'package:rick_and_morty/model/char_model.dart';

class CharacterGridItem extends StatelessWidget {
  const CharacterGridItem({
    Key? key,
    required this.model,
    required this.id,
  }) : super(key: key);

  final CharModel model;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 60,
          child: FlutterLogo(),
        ),
        SizedBox(height: 18),
        Text('Жив'),
        Text('Рик Санчез'),
        Text('Человек, Мужской'),
      ],
    );
  }
}
