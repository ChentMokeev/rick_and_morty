import 'package:flutter/material.dart';

class ImgAndName extends StatelessWidget {
  const ImgAndName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Oleg Bessmertnyi'),
            Text('Rick'),
          ],
        ),
      ],
    );
  }
}
