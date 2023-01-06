import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback? press;
  final Widget? child;
  const RoundIconButton({super.key, required this.press, this.child});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: const Color(0xFF4C4F5E),
      elevation: 6,
      focusElevation: 6,
      hoverElevation: 8,
      child: child,
    );
  }
}
