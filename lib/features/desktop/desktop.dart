import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../side_bar/side_bar.dart';
import '../tools_bar/tools_bar.dart';

import 'dart:ui' as ui;

class Desktop extends StatelessWidget {
  final Widget? child;

  const Desktop({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ImageFiltered(
                imageFilter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Image.asset('prog.gif',
                    fit: BoxFit.cover, width: double.infinity)),
            Align(alignment: Alignment.topCenter, child: child ?? Container()),
            const Align(alignment: Alignment.topCenter, child: ToolsBar()),
            const Align(alignment: Alignment.centerLeft, child: SideBar())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => context.go('/'), child: const Icon(Icons.house)),
    );
  }
}
