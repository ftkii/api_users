import 'package:flutter/material.dart';
import 'package:hash_pj/models/users.dart';
import 'package:hash_pj/widget/info2_card.dart';
import 'package:hash_pj/widget/info_card.dart';

class InfoPages extends StatelessWidget {
  final Users user;
  final String imagePath;
  const InfoPages({
    super.key,
    required this.user,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ID #${user.id}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      imagePath,
                      height: 100,
                    ),
                    borderRadius: BorderRadius.circular(500),
                  ),
                  Text(
                    user.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "@" + user.username,
                    style: TextStyle(color: Colors.grey),
                  ),
                  info_card(
                    user: user,
                    titel: 'Email',
                    iconPath: Icons.email,
                    subTitle: user.email,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      info2_card(
                          subTitle: user.address["street"], titel: "Street"),
                      info2_card(
                          subTitle: user.address["suite"], titel: "Suite"),
                      info2_card(subTitle: user.address["city"], titel: "City"),
                    ],
                  ),
                  info_card(
                      user: user,
                      titel: "Phone",
                      iconPath: Icons.phone,
                      subTitle: user.phone),
                  info_card(
                      user: user,
                      titel: "Website",
                      iconPath: Icons.web,
                      subTitle: user.website),
                  info_card(
                      user: user,
                      titel: "company",
                      iconPath: Icons.home,
                      subTitle: user.company["name"]),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Card(
                  //     child: ListTile(
                  //       title: Text("phone"),
                  //       leading: Icon(Icons.phone),
                  //       subtitle: Text(user.phone),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Card(
                  //     child: ListTile(
                  //       title: Text("website"),
                  //       leading: Icon(Icons.web),
                  //       subtitle: Text(user.phone),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Card(
                  //     child: ListTile(
                  //       title: Text("company"),
                  //       leading: Icon(Icons.home),
                  //       subtitle: Text(user.phone),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
