import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const CardButton({
    Key? key,
    required this.buttonText,
    required this.iconImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                // color: Colors.grey.shade400,
                blurRadius: 30,
                spreadRadius: 10,
              )
            ]
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700]
          ),
        )
      ],
    );
  }
}
