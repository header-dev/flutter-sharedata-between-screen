import 'package:flutter/material.dart';

class ShareData extends InheritedWidget {
  Widget child;

  bool status = false;
  Function updateStatus = () {};

  ShareData({required this.child}) : super(child: child);

  @override
  static ShareData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareData>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
