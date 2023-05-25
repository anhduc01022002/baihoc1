import 'package:flutter/material.dart';

class ScreenSize {
  late Size _designScreenSize;
  late Size _deviceScreenSize;

  void init(Size deviceSize) {
    _deviceScreenSize = deviceSize;
    _designScreenSize = Size(315, 812); // iPhone X design screen size
  }

  double scaleWidth(num designNumber) {
    if (_deviceScreenSize == null || _designScreenSize == null) {
      return designNumber.toDouble();
    }

    double scaleFactor = _deviceScreenSize.width / _designScreenSize.width;
    return designNumber.toDouble() * scaleFactor;
  }
}
void main() {
  ScreenSize screenSize = ScreenSize();
  screenSize.init(Size(375, 812));

  double scaledWidth = screenSize.scaleWidth(100);
  print('Scaled width: $scaledWidth');
}
