import 'package:code_you/features/desktop/desktop.dart';
import 'package:code_you/widget/mac_window.dart';
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
                  ImageFiltered(
                      imageFilter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                          child: Image.asset('prog.gif',
                              fit: BoxFit.cover, width: double.infinity))),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2 - 100,
                        left: (MediaQuery.of(context).size.width / 9)),
                    child: MacWindow(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Межгалактическая федерация кодинга',
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontSize: 70,
                                      fontFamily: GoogleFonts.pressStart2p()
                                          .fontFamily)),
                          const SizedBox(height: 50),
                          Text(
                              '1000001110001111010001101001110010111101101100101 1111001110111111101011110010 11001111101111110000111011001110011',
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontSize: 18,
                                      height: 2,
                                      fontFamily: GoogleFonts.pressStart2p()
                                          .fontFamily))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 300,
              //   child: SingleChildScrollView(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: const [
              //         MacWindow(
              //           child: Text('Общайся'),
              //         ),
              //         MacWindow(
              //           child: Text('Соревнуйся'),
              //         ),
              //         MacWindow(
              //           child: Text('Обучайся'),
              //         ),
              //         MacWindow(
              //           child: Text('Будь на чиле'),
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        )),
      ),
    );
  }
}
