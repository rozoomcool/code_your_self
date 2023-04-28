import 'package:flutter/material.dart';

class MacWindow extends StatelessWidget {
  const MacWindow({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var colors = [Colors.red, Colors.amber, Colors.green];
    return Container(
      margin: const EdgeInsets.all(40),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7), topRight: Radius.circular(7))),
          padding: const EdgeInsets.all(4),
          height: 24,
          child: Row(
            children: [
              ...colors.map((i) => Container(
              margin: const EdgeInsets.only(right: 5),
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: i,
                  borderRadius: BorderRadius.circular(15)),
            ))],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(40.0),
          decoration: const BoxDecoration(color: Colors.black54),
          child: child,
        )
      ]),
    );
  }
}
