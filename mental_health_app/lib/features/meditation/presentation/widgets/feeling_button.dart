import 'package:flutter/material.dart';

class FeelingButton extends StatelessWidget {
  final String image;
  final String label;
  final Color color;
  const FeelingButton({super.key, required this.image, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(image, height: 25,),
        ),
        Text(label, style: Theme.of(context).textTheme.labelSmall,)
      ],
    );
  }
}
