import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray40090 = fromHex('#9074839d');

  static Color bluegray50 = fromHex('#eaecf0');

  static Color bluegray30087 = fromHex('#87919eab');

  static Color black900B2 = fromHex('#b2000000');

  static Color black9007a = fromHex('#7a000910');

  static Color blueA700 = fromHex('#0061ff');

  static Color gray50 = fromHex('#f9fbff');

  static Color lightBlue800 = fromHex('#117eb8');

  static Color black900 = fromHex('#000910');

  static Color black902 = fromHex('#000000');

  static Color black901 = fromHex('#000000');

  static Color blue700 = fromHex('#1976d2');

  static Color gray900 = fromHex('#2a2a2a');

  static Color bluegray100 = fromHex('#d6dae2');

  static Color blue50 = fromHex('#eef4ff');

  static Color gray100 = fromHex('#f2f2f2');

  static Color blue51 = fromHex('#e0ebff');

  static Color bluegray900 = fromHex('#262b35');

  static Color bluegray800 = fromHex('#37334d');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color bluegray700 = fromHex('#424c5d');

  static Color bluegray600 = fromHex('#5f6c86');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#74839d');

  static Color bluegray200 = fromHex('#bac1ce');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
