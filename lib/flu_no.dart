library flu_no;

import 'package:flutter/material.dart';

class FluNavigatorObserver extends NavigatorObserver {
  FluNavigatorObserver._();

  static FluNavigatorObserver _instance;

  static FluNavigatorObserver get instance {
    if (_instance == null) {
      _instance = FluNavigatorObserver._();
    }

    return _instance;
  }

  static OverlayState get fOverlay {
    return FluNavigatorObserver.instance.navigator.overlay;
  }

  static NavigatorState get fNavigator {
    return FluNavigatorObserver.instance.navigator;
  }

  factory FluNavigatorObserver() => instance;
}
