import 'package:flutter/material.dart';

import '../application/domain/consts.dart';

class StormCardV1 extends StatefulWidget {
  const StormCardV1({super.key, required this.title});

  final String title;

  @override
  State<StormCardV1> createState() => _StormCardV1State();
}

class _StormCardV1State extends State<StormCardV1> {
  double _scale = 1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _scale = 1.05;
        });
      },
      child: AnimatedScale(
        onEnd: (){
          setState(() {
            _scale = 1;
          });
        },
        scale: _scale,
        duration: const Duration(milliseconds: 125),
        child: Container(
            color: Colors.black54,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30),
              child: Text(widget.title, style: textStyle.copyWith(fontSize: 20)),
            )),
      ),
    );
  }
}
