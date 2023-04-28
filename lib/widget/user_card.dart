import 'package:code_you/application/domain/consts.dart';
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
      height: 350,
      color: Colors.black87,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network('https://models.readyplayer.me/6185a4acfb622cf1cdc49348.png?scene=fullbody-portrait-v1', width: 150,height: 150),
          Text(user.fullName, style: textStyle.copyWith(fontSize: 10)),
          Wrap(
            children: user.job!
                .map((e) => Container(
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, blurRadius: 3)
                          ]),
                      child: Text(
                        e,
                        style: TextStyle(
                            fontFamily: GoogleFonts.pressStart2p().fontFamily).copyWith(fontSize: 6),
                      ),
                    ))
                .toList(),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Спонсировать', style: textStyle.copyWith(fontSize: 6)))
        ],
      ),
    );
  }
}
