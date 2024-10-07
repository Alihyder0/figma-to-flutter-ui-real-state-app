import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kwhite = Colors.white;
const Color kwhitef7 = Colors.white60;
const Color kwhiteFA = Colors.white54;
const Color kwhiteEF = Colors.white38;

const Color kblack = Colors.black;
const Color Kblack0D = Colors.black45;

const Color kGrey = Color(0xFFE0E0E0);
Color? kGreyb7 = Colors.grey[400];
Color? kGrey8E = Colors.grey;
Color? kGrey83 = Colors.grey[600];
Color? kGrey85 = Colors.grey[700];

const Color kBlue = Color(0xff0a8ed9);
const Color klightblue = Color(0xffa0dafb);

// Gradient


Gradient  klinearGradientblack = LinearGradient(
  begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: <Color>[
      kblack.withOpacity(0.8),
      Kblack0D.withOpacity(0),
    ],
    tileMode: TileMode.clamp,
);

Gradient  klinearGradientblue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    klightblue,
    kBlue,
  ],
  tileMode: TileMode.clamp,
);

Gradient  klinearGradientwhite = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    kwhite.withOpacity(0),
    kwhite,
  ],
  tileMode: TileMode.clamp,
);


//Border
const double kBorderRadius20 = 20.0;
const double kBorderRadius10 = 10.0;
const double kBorderRadius5 = 5.0;

//Padding

const double kPadding32 = 32.0;
const double kPadding24 = 24.0;
const double kPadding20 = 20.0;
const double kPadding16 = 16.0;
const double kPadding8 = 8.0;
const double kPadding4 = 4.0;

//Input Style

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius10),
  borderSide: const BorderSide(
    color: kwhite,
  )
);

final kRalewayBold = GoogleFonts.raleway(
    fontWeight:  FontWeight.w700
);

final kRalewaySemiBold = GoogleFonts.raleway(
    fontWeight:  FontWeight.w600
);

final kRalewayMedium = GoogleFonts.raleway(
    fontWeight:  FontWeight.w500
);

final kRalewayRegular = GoogleFonts.raleway(
    fontWeight:  FontWeight.w400
);
