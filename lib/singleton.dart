import 'package:flutter/material.dart';

class ScreenSize {
  static final ScreenSize _instance = ScreenSize._internal();
  static ScreenSize get instance => _instance;

  ScreenSize._internal()
      : _designScreenSize = Size(315, 812), // iPhone X design screen size
        _deviceScreenSize = Size.zero;

  final Size _designScreenSize;
  Size _deviceScreenSize;

  void init(Size deviceSize) {
    _deviceScreenSize = deviceSize;
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
  ScreenSize screenSize = ScreenSize.instance;
  screenSize.init(Size(375, 812)); // iPhone 11 device screen size

  double scaledWidth = screenSize.scaleWidth(100); // Example: Scale width of 100 from design
  print('Scaled width: $scaledWidth'); // Output: Scaled width: 120.0
}
