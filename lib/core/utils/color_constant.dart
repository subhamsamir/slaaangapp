import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#6a707c');

  static Color gray700 = fromHex('#646464');

  static Color deepOrange50 = fromHex('#ffe1e0');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray400 = fromHex('#8390a1');

  static Color gray800 = fromHex('#4d4d4d');

  static Color indigo50 = fromHex('#e8ecf4');

  static Color gray900 = fromHex('#1e232c');

  static Color red400 = fromHex('#e94057');

  static Color teal50 = fromHex('#e1f6f4');

  static Color gray80001 = fromHex('#4f4f4f');

  static Color deepOrange10084 = fromHex('#84f5c8c6');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f7f8f9');

  static Color gray100 = fromHex('#f6f7f8');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan400 = fromHex('#34c2c1');

  static Color gray20036 = fromHex('#36ededed');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
