// part of '../home_screen.dart';

import 'package:flutter/material.dart';

class SuccsessGrid extends StatelessWidget {
  const SuccsessGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(16),
        // child: CharacterGridItem(model: ,),
      ),
    );
  }
}

