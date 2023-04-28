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
        child: Container(
          margin: const EdgeInsets.only(top: 40, right: 40, left: 40),
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: MacWindow(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('://Пользователи', style: textStyle.copyWith(color: Colors.green, fontSize: 24, shadows:[const BoxShadow(color: Colors.pink, blurRadius: 2)])),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: context.read<UserState>().users.length,
                        itemBuilder: (context, index) => Padding(padding: const EdgeInsets.all(20), child: UserCard(user: context.read<UserState>().users[index], index: index)),
                      ),
                    )
                    // Row(children: users.map((e) => UserCard(user: e, index: 1)).toList())
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('://Пользователи', style: textStyle.copyWith(color: Colors.green, fontSize: 24, shadows:[const BoxShadow(color: Colors.pink, blurRadius: 2)])),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: context.read<UserState>().users.length,
                        itemBuilder: (context, index) => Padding(padding: const EdgeInsets.all(20), child: UserCard(user: context.read<UserState>().users[index], index: index)),
                      ),
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