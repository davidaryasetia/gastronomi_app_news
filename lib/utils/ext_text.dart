import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

extension TextExtension on Text {
  Text gray() => copyWith(style: const TextStyle(color: Color(0xff99A4AB)));
  Text orelega75s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400));
  Text orelega75m() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400));
  Text orelega60s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400));
  Text orelega50s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 50, fontWeight: FontWeight.w400));
  Text orelega40s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 40, fontWeight: FontWeight.w400));
  Text orelega35s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 35, fontWeight: FontWeight.w400));
  Text orelega30s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 30, fontWeight: FontWeight.w400));
  Text orelega25s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 20, fontWeight: FontWeight.w400));
  Text orelega20s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 20, fontWeight: FontWeight.w400));
  Text orelega15s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 15, fontWeight: FontWeight.w400));
  Text orelega15m() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 15, fontWeight: FontWeight.w600));
  Text orelega15b() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 15, fontWeight: FontWeight.w700));
  Text orelega10s() => copyWith(style: GoogleFonts.orelegaOne(fontSize: 10, fontWeight: FontWeight.w400));

  // Text nunito30b() => copyWith(style: GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.w700));
  Text nunito35s() => copyWith(style: GoogleFonts.nunito(fontSize: 35, fontWeight: FontWeight.w400));
  Text nunito30b() => copyWith(style: GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.w700));
  Text nunito30m() => copyWith(style: GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.w600));
  Text nunito30s() => copyWith(style: GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.w400));
  Text nunito25eb() => copyWith(style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w900));
  Text nunito25b() => copyWith(style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w700));
  Text nunito25m() => copyWith(style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w600));
  Text nunito25s() => copyWith(style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w400));
  Text nunito18s() => copyWith(style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w400));
  Text nunito20s() => copyWith(style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w400));
  Text nunito20m() => copyWith(style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w600));
  Text nunito20b() => copyWith(style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w700));
  Text nunito18m() => copyWith(style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w600));
  Text nunito18b() => copyWith(style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w700));
  Text nunito16b() => copyWith(style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w700));
  Text nunito16s() => copyWith(style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w400));
  Text nunito16m() => copyWith(style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w600));
  Text nunito15s() => copyWith(style: GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.w400));
  Text nunito15m() => copyWith(style: GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.w600));
  Text nunito15b() => copyWith(style: GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.w700));
  Text nunito10s() => copyWith(style: GoogleFonts.nunito(fontSize: 10, fontWeight: FontWeight.w400));
  Text nunito10m() => copyWith(style: GoogleFonts.nunito(fontSize: 10, fontWeight: FontWeight.w600));
  Text nunito10b() => copyWith(style: GoogleFonts.nunito(fontSize: 10, fontWeight: FontWeight.w700));

  Text white() => copyWith(style: const TextStyle(color: Colors.white));
  Text greenSmooth() => copyWith(style: TextStyle(color: OGoodGreen));
  Text primary() => copyWith(style: TextStyle(color: OPrimaryColor));
  Text black() => copyWith(style: const TextStyle(color: Color(0xff050B16)));
  Text red() => copyWith(style: const TextStyle(color: Colors.red));
  Text brown() => copyWith(style: const TextStyle(color: Colors.brown));
  Text title() => copyWith(
          style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ));
  Text copyWith({Key? key, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection = TextDirection.ltr, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextStyle? style}) {
    return Text(data ?? '',
        key: key ?? this.key,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        style: style != null ? this.style?.merge(style) ?? style : this.style);
  }
}
