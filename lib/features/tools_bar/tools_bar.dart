import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolsBar extends StatelessWidget {
  const ToolsBar({super.key});

  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle(fontFamily: GoogleFonts.pressStart2p().fontFamily);

    return Container(
      // decoration: BoxDecoration(color: Theme.of(context).cardColor),
      width: MediaQuery.of(context).size.width,
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              Text('Тех поддержка', style: textStyle),
            ],
          ),
          Text('${DateTime.now()}', style: textStyle),
          Row(
            children: const [
              Icon(Icons.credit_card),
              SizedBox(width: 20),
              Icon(Icons.person),
              SizedBox(width: 20),
              Icon(Icons.exit_to_app),
              SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}
