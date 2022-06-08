import 'package:flutter/material.dart';
import 'package:rick_and_morty/model/char_model.dart';

class CharacterListItem extends StatelessWidget {
  const CharacterListItem({
    Key? key,
    required this.model,
    required this.id,
  }) : super(key: key);

  final CharModel model;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 37,
          backgroundImage: NetworkImage(model.results![id].image!),
        ),
        const SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(model.results![id].status!),
            Text(model.results![id].name!),
            Text(model.results![id].species! + ', ' + model.results![id].gender!),
          ],
        ),
      ],
    );
  }
}
