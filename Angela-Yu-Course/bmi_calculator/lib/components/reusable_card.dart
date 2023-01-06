import 'package:flutter/material.dart';
import '../constant.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({
    Key? key,
    this.color = kActiveCardColor,
    this.child,
    this.onPressed,
  }) : super(key: key);

  final Color? color;
  final Widget? child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: child,
      ),
    );
  }
}
