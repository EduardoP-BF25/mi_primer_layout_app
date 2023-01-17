import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttom_column extends StatelessWidget {
  const buttom_column({super.key,required this.icon, required this.label, required this.color});

    final Color color;
    final IconData icon;
    final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}