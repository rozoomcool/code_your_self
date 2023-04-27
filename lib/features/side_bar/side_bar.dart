import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: Image.asset('git.png', width: 30, height: 30, color: Colors.amber,),
          ),
          Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.account_balance_wallet_sharp,
              size: 30,
              color: Colors.green,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.account_balance_wallet_sharp,
              size: 30,
              color: Colors.green,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: Image.asset('dots.png', width: 30, height: 30, color: Colors.amber,),
          )


        ],
      ),
    );
  }
}
