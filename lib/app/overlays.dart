import 'package:flutter/material.dart';
import 'package:industria/core/overlays/cookie_overlay.dart';


class Overlays extends StatelessWidget {
  final Widget child;
  final List<Widget> overlays;
  const Overlays({Key? key, required this.child, required this.overlays}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          child,
          ...overlays
        ],
      ),
    );
  }
}
