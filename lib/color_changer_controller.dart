import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A controller that manages a [value] representing the percent complete, a [color] indicating the current color to display, and booleans [isAnimating] and [shouldStartAnimation] to control when to redisplay the screen.
class ColorChangerController extends ChangeNotifier {
  double value = 0.0;
  Color color = Colors.transparent;
  bool isAnimating = false;
  bool shouldStartAnimation = false;

  void setValue(double value) {
    this.value = value;
    notifyListeners();
  }

  void changeColor() {
    this.shouldStartAnimation = true;
    notifyListeners();
  }
}
