// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color darkGrey;
  late Color yellow;
  late Color green;
  late Color darkestBlue;
  late Color red;
  late Color darkBlue;
  late Color lightGrey;
  late Color lightBlue;
  late Color blue;
  late Color primaryPrimary50;
  late Color primaryPrimary100;
  late Color primaryPrimary200;
  late Color primaryPrimary300;
  late Color primaryPrimary400;
  late Color primaryPrimary500;
  late Color primaryPrimar600;
  late Color primaryPrimary700;
  late Color primaryPrimary800;
  late Color primaryPrimar900;
  late Color primarySuccess50;
  late Color primarySuccess100;
  late Color primarySuccess200;
  late Color primarySuccess300;
  late Color primarySuccess400;
  late Color primarySuccess500;
  late Color primarySuccess600;
  late Color primarySuccess700;
  late Color primarySuccess800;
  late Color primarySuccess900;
  late Color primaryWarning50;
  late Color primaryWarning100;
  late Color primaryWarning200;
  late Color primaryWarning300;
  late Color primaryWarning400;
  late Color primaryWarning500;
  late Color primaryWarning600;
  late Color primaryWarning700;
  late Color primaryWarning800;
  late Color primaryWarning900;
  late Color primaryDestrucive50;
  late Color primaryDestrucive100;
  late Color primaryDestrucive200;
  late Color primaryDestrucive300;
  late Color primaryDestrucive400;
  late Color primaryDestrucive500;
  late Color primaryDestrucive600;
  late Color primaryDestrucive700;
  late Color primaryDestrucive800;
  late Color primaryDestrucive900;
  late Color primaryNeutral50;
  late Color primaryNeutral100;
  late Color primaryNeutral200;
  late Color primaryNeutral300;
  late Color primaryNeutral400;
  late Color primaryNeutral500;
  late Color primaryNeutral600;
  late Color primaryNeutral700;
  late Color primaryNeutral800;
  late Color primaryNeutral900;
  late Color primaryShadesWhite;
  late Color primaryShadesBlack;
  late Color secondary50;
  late Color secondary100;
  late Color secondary200;
  late Color secondary300;
  late Color secondary400;
  late Color secondary500;
  late Color secondary600;
  late Color secondary700;
  late Color secondary800;
  late Color secondary900;
  late Color tertiaryOrange200;
  late Color tertiaryOrange500;
  late Color tertiaryOrange800;
  late Color tertiaryYellow200;
  late Color tertiaryYellow500;
  late Color tertiaryYellow800;
  late Color tertiaryOlive200;
  late Color tertiaryOlive500;
  late Color tertiaryOlive800;
  late Color tertiaryBlue200;
  late Color tertiaryBlue500;
  late Color tertiaryBlue800;
  late Color tertiaryViolet200;
  late Color tertiaryViolet500;
  late Color tertiaryViolet800;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF025296);
  late Color secondaryColor = const Color(0xFF1D86FF);
  late Color tertiaryColor = const Color(0xFF004890);
  late Color alternate = const Color(0xFF868686);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFF1F4F8);
  late Color primaryText = const Color(0xFF091249);
  late Color secondaryText = const Color(0xFF57636C);

  late Color darkGrey = Color(0xFFFFFFFF);
  late Color yellow = Color(0xFFFFB300);
  late Color green = Color(0xFF10CC5E);
  late Color darkestBlue = Color(0xFF294165);
  late Color red = Color(0xFFE5655A);
  late Color darkBlue = Color(0xFF004890);
  late Color lightGrey = Color(0xFF868686);
  late Color lightBlue = Color(0xFF1D86FF);
  late Color blue = Color(0xFF025296);
  late Color primaryPrimary50 = Color(0xFFECF1FD);
  late Color primaryPrimary100 = Color(0xFFD0DDFC);
  late Color primaryPrimary200 = Color(0xFFA3BAF9);
  late Color primaryPrimary300 = Color(0xFF7391EF);
  late Color primaryPrimary400 = Color(0xFF4F6FDF);
  late Color primaryPrimary500 = Color(0xFF1C3FCA);
  late Color primaryPrimar600 = Color(0xFF1430AD);
  late Color primaryPrimary700 = Color(0xFF0E2391);
  late Color primaryPrimary800 = Color(0xFF081775);
  late Color primaryPrimar900 = Color(0xFF051060);
  late Color primarySuccess50 = Color(0xFFEFFCE6);
  late Color primarySuccess100 = Color(0xFFDCF9C9);
  late Color primarySuccess200 = Color(0xFFB4F396);
  late Color primarySuccess300 = Color(0xFF7CDB5D);
  late Color primarySuccess400 = Color(0xFF49B834);
  late Color primarySuccess500 = Color(0xFF108A06);
  late Color primarySuccess600 = Color(0xFF309B1C);
  late Color primarySuccess700 = Color(0xFF03630B);
  late Color primarySuccess800 = Color(0xFF01500F);
  late Color primarySuccess900 = Color(0xFF014211);
  late Color primaryWarning50 = Color(0xFFFEF8E6);
  late Color primaryWarning100 = Color(0xFFFEF3D6);
  late Color primaryWarning200 = Color(0xFFFEE4AE);
  late Color primaryWarning300 = Color(0xFFFDD185);
  late Color primaryWarning400 = Color(0xFFFBBE66);
  late Color primaryWarning500 = Color(0xFFF99F35);
  late Color primaryWarning600 = Color(0xFFD67D26);
  late Color primaryWarning700 = Color(0xFFB35F1A);
  late Color primaryWarning800 = Color(0xFF904410);
  late Color primaryWarning900 = Color(0xFF77310A);
  late Color primaryDestrucive50 = Color(0xFFFDEFED);
  late Color primaryDestrucive100 = Color(0xFFFDDAD3);
  late Color primaryDestrucive200 = Color(0xFFFCADA9);
  late Color primaryDestrucive300 = Color(0xFFF67C81);
  late Color primaryDestrucive400 = Color(0xFFED5A6E);
  late Color primaryDestrucive500 = Color(0xFFE22853);
  late Color primaryDestrucive600 = Color(0xFFC21D53);
  late Color primaryDestrucive700 = Color(0xFFA21450);
  late Color primaryDestrucive800 = Color(0xFF830C4A);
  late Color primaryDestrucive900 = Color(0xFF6C0745);
  late Color primaryNeutral50 = Color(0xFFF9FAFB);
  late Color primaryNeutral100 = Color(0xFFF3F4F6);
  late Color primaryNeutral200 = Color(0xFFE5E7EB);
  late Color primaryNeutral300 = Color(0xFFD2D5DB);
  late Color primaryNeutral400 = Color(0xFF9CA3AF);
  late Color primaryNeutral500 = Color(0xFF6B7280);
  late Color primaryNeutral600 = Color(0xFF4B5563);
  late Color primaryNeutral700 = Color(0xFF374151);
  late Color primaryNeutral800 = Color(0xFF1F2937);
  late Color primaryNeutral900 = Color(0xFF111827);
  late Color primaryShadesWhite = Color(0xFFFFFFFF);
  late Color primaryShadesBlack = Color(0xFF121212);
  late Color secondary50 = Color(0xFFFEF1EB);
  late Color secondary100 = Color(0xFFFDDACC);
  late Color secondary200 = Color(0xFFFCAE99);
  late Color secondary300 = Color(0xFFF67766);
  late Color secondary400 = Color(0xFFEE4540);
  late Color secondary500 = Color(0xFFE30613);
  late Color secondary600 = Color(0xFFC30420);
  late Color secondary700 = Color(0xFF6B4484);
  late Color secondary800 = Color(0xFF83012C);
  late Color secondary900 = Color(0xFF6C012E);
  late Color tertiaryOrange200 = Color(0xFF614878);
  late Color tertiaryOrange500 = Color(0xFF401A02);
  late Color tertiaryOrange800 = Color(0xFF35AF91);
  late Color tertiaryYellow200 = Color(0xFFFEF0B0);
  late Color tertiaryYellow500 = Color(0xFFFEC93B);
  late Color tertiaryYellow800 = Color(0xFF936512);
  late Color tertiaryOlive200 = Color(0xFFA2F3C9);
  late Color tertiaryOlive500 = Color(0xFF188F73);
  late Color tertiaryOlive800 = Color(0xFF074E52);
  late Color tertiaryBlue200 = Color(0xFFB7EFFE);
  late Color tertiaryBlue500 = Color(0xFF4BB3F6);
  late Color tertiaryBlue800 = Color(0xFF174A8E);
  late Color tertiaryViolet200 = Color(0xFFCDBBFD);
  late Color tertiaryViolet500 = Color(0xFF7454F2);
  late Color tertiaryViolet800 = Color(0xFF2A1A8C);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Roboto';
  TextStyle get title1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  String get title2Family => 'Roboto';
  TextStyle get title2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );
  String get title3Family => 'Roboto';
  TextStyle get title3 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get subtitle1Family => 'Roboto';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  String get subtitle2Family => 'Roboto';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  String get bodyText1Family => 'Roboto';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  String get bodyText2Family => 'Roboto';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
