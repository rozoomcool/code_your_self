import 'package:code_you/application/domain/consts.dart';
import 'package:code_you/features/desktop/desktop.dart';
import 'package:code_you/widget/mac_window.dart';
import 'package:code_you/widget/storm_card_v1.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Desktop(
          child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2 - 250,
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
                                fontFamily:
                                    GoogleFonts.pressStart2p().fontFamily)),
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
                                fontFamily:
                                    GoogleFonts.pressStart2p().fontFamily))
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 2,
                  child: MacWindow(
                    child: Column(children: [
                      Text('Общайся', style: textStyle.copyWith(fontSize: 20)),
                      const SizedBox(height: 5),
                      const Divider(color: Colors.black87),
                      const SizedBox(height: 5),
                      Text(
                          'Общайся с интересными персонажами из нашего сообщества. Делись с ними опытом и находи друзей.',
                          style: textStyle)
                    ]),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MacWindow(
                    child: Column(children: [
                      Text('Соревнуйся',
                          style: textStyle.copyWith(fontSize: 20)),
                      const SizedBox(height: 5),
                      const Divider(color: Colors.black87),
                      const SizedBox(height: 5),
                      Text(
                          'Что?, захотелось размять мозги и  пальцы?) тогда прошу на соревновательные турниры, здесь ты можешь бросить вызов другим программистам и посмотреть настолько-ли ты хорош как думаешь!',
                          style: textStyle)
                    ]),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MacWindow(
                    child: Column(children: [
                      Text('Будь на чиле',
                          style: textStyle.copyWith(fontSize: 20)),
                      const SizedBox(height: 5),
                      const Divider(color: Colors.black87),
                      const SizedBox(height: 5),
                      Text(
                          'Расслабься выпей чаю и поешь печенек, веселись с друзьями и заводи новых знакомых, не всегда-же соперничать друг с другом верно? Будь самим собой под конец.',
                          style: textStyle)
                    ]),
                  ),
                ),
                Expanded(flex: 1, child: Container()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 4,
                  child: Column(children: [
                    Text('Общайся', style: textStyle.copyWith(fontSize: 20)),
                    const SizedBox(height: 5),
                    const Divider(color: Colors.black87),
                    const SizedBox(height: 5),
                    Text(
                        'Общайся с интересными персонажами из нашего сообщества. Делись с ними опытом и находи друзей.',
                        style: textStyle)
                  ]),
                ),
                Expanded(
                  flex: 4,
                  child: MacWindow(
                    child: Column(children: [
                      Text('Соревнуйся',
                          style: textStyle.copyWith(fontSize: 20)),
                      const SizedBox(height: 5),
                      const Divider(color: Colors.black87),
                      const SizedBox(height: 5),
                      Text(
                          'Общайся с интересными персонажами из нашего сообщества. Делись с ними опытом и находи друзей.',
                          style: textStyle)
                    ]),
                  ),
                ),
                Expanded(flex: 1, child: Container())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 4,
                  child: MacWindow(
                    child: Column(children: [
                      Text('Соревнуйся',
                          style: textStyle.copyWith(fontSize: 20)),
                      const SizedBox(height: 5),
                      const Divider(color: Colors.black87),
                      const SizedBox(height: 5),
                      Text(
                          'Общайся с интересными персонажами из нашего сообщества. Делись с ними опытом и находи друзей.',
                          style: textStyle)
                    ]),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(children: [
                    Text('Общайся', style: textStyle.copyWith(fontSize: 20)),
                    const SizedBox(height: 5),
                    const Divider(color: Colors.black87),
                    const SizedBox(height: 5),
                    Text(
                        'Общайся с интересными персонажами из нашего сообщества. Делись с ними опытом и находи друзей.',
                        style: textStyle)
                  ]),
                ),
                Expanded(flex: 1, child: Container())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: Container()),
                const Expanded(
                  flex: 3,
                  child: StormCardV1(title: 'Войти'),
                ),
                Expanded(flex: 1, child: Container()),
                const Expanded(
                  flex: 3,
                  child: StormCardV1(title: 'Зарегестрироваться'),
                ),
                Expanded(flex: 1, child: Container())
              ],
            ),
            const SizedBox(height: 100)
          ],
        ),
      )),
    );
  }
}
