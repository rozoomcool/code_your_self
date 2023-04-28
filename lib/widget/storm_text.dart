import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StormText extends StatelessWidget{

  final TextEditingController controller;
  final String hintText;

  const StormText({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,

        hintStyle: TextStyle(
            color: Colors.white12,
            fontStyle: FontStyle.italic,
            fontSize: 12.0,
            fontFamily: GoogleFonts.pressStart2p().fontFamily),
        filled: true,
        fillColor: Colors.black,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black87, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(
          color: Colors.green.shade900,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          fontFamily: GoogleFonts.pressStart2p().fontFamily),
      cursorColor: Colors.green.shade700,
    );
  }

}