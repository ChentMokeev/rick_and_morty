// import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

class DetailCharScreen extends StatelessWidget {
  const DetailCharScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: const Color(0xff141111).withOpacity(0.5),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Rick.png',
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 74,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Рик Санченз',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 34,
                              fontWeight: FontWeight.w400),
                        ),
                        Text('Живой'),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 174,
                  left: MediaQuery.of(context).size.width / 4,
                  child: Container(
                    width: 146,
                    height: 146,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(73),
                      border: Border.all(
                        width: 8,
                        color: Colors.white,
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Rick.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}