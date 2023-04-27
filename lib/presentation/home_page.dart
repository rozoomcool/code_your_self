import 'package:code_you/features/desktop/desktop.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Desktop(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: ImageFiltered(
                        imageFilter:
                            ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Image.asset('imgpreview.jpg')),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2 - 100,
                        left: (MediaQuery.of(context).size.width / 9)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Межгалактическая\nфедерация\nкодинга',
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                    fontSize: 70,
                                    fontFamily:
                                        GoogleFonts.pressStart2p().fontFamily)),
                        Text(
                            '1000001110001111010001101001110010111101101100101100000111100111011111110101111001010000011001111101111110000111011001110011',
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                    fontSize: 18,
                                    fontFamily:
                                        GoogleFonts.pressStart2p().fontFamily))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
