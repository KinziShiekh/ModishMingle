import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const MyButton(
      {super.key, required this.onTap, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(20),
        child: child,
      ),
    );
  }
}
