import 'package:flutter/material.dart';
import 'package:hash_pj/models/users.dart';

class info_card extends StatelessWidget {
  final String titel;
  final String subTitle;
  final IconData iconPath;
  const info_card({
    super.key,
    required this.user,
    required this.titel,
    required this.iconPath,
    required this.subTitle,
  });

  final Users user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        child: ListTile(
          title: Text(titel),
          leading: Icon(iconPath),
          subtitle: Text(subTitle),
        ),
      ),
    );
  }
}
