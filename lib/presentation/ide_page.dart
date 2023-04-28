import 'package:code_you/application/domain/consts.dart';
import 'package:code_you/features/desktop/desktop.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class IdePage extends StatelessWidget {
  const IdePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Desktop(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Image.asset('ide.jpg',
                  fit: BoxFit.cover, width: double.infinity)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [Image.asset('bepo_broke.png', width: 250),
            Container(width: 500, child: Text('IDE находится на стадии разработки. Занесите печеньки программистам, чтобы ускорить разработку', style: textStyle))],
          )
        ],
      ),
    );
  }
}
