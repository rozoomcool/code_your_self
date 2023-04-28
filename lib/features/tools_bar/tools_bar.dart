import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolsBar extends StatelessWidget {
  const ToolsBar({super.key});

  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle(fontFamily: GoogleFonts.pressStart2p().fontFamily);

    return Container(
      decoration: const BoxDecoration(color: Colors.black87),
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
            children: [
              const Icon(Icons.credit_card),
              const SizedBox(width: 20),
              InkWell(onTap: () => context.go('/auth'), child: const Icon(Icons.person)),
              const SizedBox(width: 20),
              const Icon(Icons.exit_to_app),
              const SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}
