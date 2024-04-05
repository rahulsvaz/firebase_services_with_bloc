

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  final String label;
  const AuthButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          label.toUpperCase(),
          style: GoogleFonts.abel(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}