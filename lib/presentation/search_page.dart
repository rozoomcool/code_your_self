import 'package:code_you/application/domain/consts.dart';
import 'package:code_you/widget/mac_window.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../application/domain/user_state.dart';
import '../features/desktop/desktop.dart';
import '../models/user.dart';
import '../widget/user_card.dart';

class SearchPage extends StatelessWidget{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = context.watch<UserState>().users;


    return Desktop(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: MacWindow(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('://Пользователи', style: textStyle.copyWith(color: Colors.green.shade700)),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: context.read<UserState>().users.length,
                      itemBuilder: (context, index) => Expanded(child: UserCard(user: context.read<UserState>().users[index], index: index)),
                    )
                    // Row(children: users.map((e) => UserCard(user: e, index: 1)).toList())
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}