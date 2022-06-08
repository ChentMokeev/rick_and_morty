import 'package:flutter/material.dart';

class PlugInScreen extends StatelessWidget {
  const PlugInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/not_found.png'),
            const SizedBox(height: 30),
            const Text('Пока что тут ничего нет.'),
          ],
        ),
      ),
    );
  }
}