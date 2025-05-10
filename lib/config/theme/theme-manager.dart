

import 'package:evently/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: AppColors.blue),
          centerTitle: true,
          color: AppColors.light,
          foregroundColor: AppColors.black10,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 18.sp,
              color: AppColors.blue,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal)),
      primaryColor: AppColors.blue,
      scaffoldBackgroundColor: AppColors.light,
      iconTheme: const IconThemeData(
        color: AppColors.black1C,
      ),
      cardColor: AppColors.light,
      cardTheme: CardTheme(
        color: AppColors.light,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.blue,
        foregroundColor: AppColors.white,
        shape: StadiumBorder(
            side: BorderSide(
              width: 4.w,
              color: AppColors.white,
            )),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: AppColors.blue,
        shape: CircularNotchedRectangle(),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.white),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: AppColors.grey,
        labelStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.grey,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.grey)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.red)),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              elevation: 0,
              foregroundColor: AppColors.blue,
              textStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  color: AppColors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r),
              ),
              padding: REdgeInsets.symmetric(vertical: 12),
              backgroundColor: AppColors.blue,
              foregroundColor: AppColors.white,
              textStyle: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white))),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.black1C),
        titleMedium: GoogleFonts.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.blue),
        titleSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: AppColors.white,
            fontWeight: FontWeight.normal),
        titleLarge: GoogleFonts.inter(
            fontSize: 24.sp,
            color: AppColors.white,
            fontWeight: FontWeight.bold),
        headlineMedium: GoogleFonts.inter(
            fontSize: 18.sp,
            color: AppColors.white,
            fontWeight: FontWeight.bold),
        headlineSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: AppColors.white,
            fontWeight: FontWeight.w500),
        labelMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: AppColors.blue,
            fontWeight: FontWeight.bold),
        labelSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: AppColors.black1C,
            fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: AppColors.black1C,
            fontWeight: FontWeight.bold),
        displaySmall: GoogleFonts.inter(
            fontSize: 16.sp,
            color: AppColors.blue,
            fontWeight: FontWeight.w500),
      ));

  static final ThemeData dark = ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: AppColors.blue),
          centerTitle: true,
          color: AppColors.dark,
          foregroundColor: AppColors.blue,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 18.sp,
              color: AppColors.blue,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal)),
      primaryColor: AppColors.dark,
      scaffoldBackgroundColor: AppColors.dark,
      iconTheme: const IconThemeData(
        color: AppColors.ofWhite,
      ),
      cardColor: AppColors.dark,
      cardTheme: CardTheme(
        color: AppColors.dark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.dark,
        foregroundColor: AppColors.ofWhite,
        shape: StadiumBorder(
            side: BorderSide(
              width: 4.w,
              color: AppColors.ofWhite,
            )),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: AppColors.dark,
        shape: CircularNotchedRectangle(),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.ofWhite,
          unselectedItemColor: AppColors.ofWhite),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: AppColors.ofWhite,
        labelStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.ofWhite,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.blue)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.blue)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.blue)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.red)),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              elevation: 0,
              foregroundColor: AppColors.blue,
              textStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  color: AppColors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r),
              ),
              padding: REdgeInsets.symmetric(vertical: 12),
              backgroundColor: AppColors.blue,
              foregroundColor: AppColors.white,
              textStyle: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white))),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.ofWhite),
        titleMedium: GoogleFonts.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.blue),
        titleSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: AppColors.ofWhite,
            fontWeight: FontWeight.normal),
        titleLarge: GoogleFonts.inter(
            fontSize: 24.sp,
            color: AppColors.ofWhite,
            fontWeight: FontWeight.bold),
        headlineMedium: GoogleFonts.inter(
            fontSize: 18.sp,
            color: AppColors.white,
            fontWeight: FontWeight.bold),
        headlineSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: AppColors.white,
            fontWeight: FontWeight.w500),
        labelMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: AppColors.blue,
            fontWeight: FontWeight.bold),
        labelSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: AppColors.ofWhite,
            fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: AppColors.ofWhite,
            fontWeight: FontWeight.bold),
        displaySmall: GoogleFonts.inter(
            fontSize: 16.sp,
            color: AppColors.blue,
            fontWeight: FontWeight.w500),
      ));
}

