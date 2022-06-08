import 'package:flutter/material.dart';

abstract class Typography {
  static const f16w500 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.5,
  );

  static const f16w400 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.5,
  );

  static const f10w500 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 10,
    height: 1.6,
  );

  static const f12w400Gray = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.33,
    color: Color(0xFF828282),
  );

  static const f12w400 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    height: 1.33,
    letterSpacing: 0.5,
    color: Color(0xFFBDBDBD),
  );
}
