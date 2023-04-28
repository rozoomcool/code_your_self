import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/user.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  final int index;

  const UserCard({super.key, required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 150,
      height: 300,
      color: Colors.black87,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network('https://i.pravatar.cc/150?img=$index'),
          Text(user.fullName),
          Wrap(
            children: user.job!
                .map((e) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, blurRadius: 3)
                          ]),
                      child: Text(
                        e,
                        style: TextStyle(
                            fontFamily: GoogleFonts.pressStart2p().fontFamily),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
