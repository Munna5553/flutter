import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class EmptyViews extends StatelessWidget {
  const EmptyViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Lottie.asset(AnimationAsset.empty),
        Text(
          "Tap on + to add notes",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: const Color(0xff9A9A9A)),
        )
      ],
    );
  }
}
