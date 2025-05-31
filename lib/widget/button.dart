import 'package:flutter/material.dart';

class buildButton extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback onClick;

  const buildButton({
    super.key,
    required this.text,
    this.color,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: color ?? Colors.grey[800],
          ),
          onPressed: onClick,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
