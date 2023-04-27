import 'package:flutter/material.dart';

import '../side_bar/side_bar.dart';
import '../tools_bar/tools_bar.dart';

class Desktop extends StatelessWidget {
  final Widget? child;

  const Desktop({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(alignment: Alignment.topCenter, child: child ?? Container()),
          const Align(alignment: Alignment.topCenter, child: ToolsBar()),
          const Align(alignment: Alignment.centerLeft, child: SideBar())
        ],
      ),
    );
  }
}
