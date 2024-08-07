import 'package:flutter/material.dart';

class info2_card extends StatelessWidget {
  final String titel;
  final String subTitle;
  const info2_card({super.key, required this.subTitle, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  titel,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ));
  }
}
