import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonSafeArea extends StatelessWidget {
  const CommonSafeArea({
    super.key,
    required this.child,
    this.light = false,
    this.statusBarColor = Colors.white,
  });
  final Widget child;
  final bool light;
  final Color statusBarColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: statusBarColor,
      child: SafeArea(
        top: true,
        bottom: false,
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: light ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
          child: child,
        ),
      ),
    );
  }
}
