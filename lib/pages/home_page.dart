import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hash_pj/models/users.dart';
import 'package:hash_pj/provider/users_provider.dart';
import 'package:hash_pj/widget/user_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UsersProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[600],
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: userProvider.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : userProvider.errorMessage != null
                  ? Center(
                      child: Text(userProvider.errorMessage!),
                    )
                  : ListView.builder(
                      itemCount: userProvider.user.length,
                      itemBuilder: (context, index) {
                        Users user = userProvider.user[index];
                        //  كم عدد الصور اللي عندي + من وين يبدأ العد
                        int randomImage = Random().nextInt(4) + 1;
                        return User_card(
                          user: user,
                          imagePath: "images/${randomImage}.png",
                        );
                      },
                    )),
    );
  }
}
