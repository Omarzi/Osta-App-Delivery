import '../../constants/exports.dart';

class DElevatedButtonTheme {
  DElevatedButtonTheme._();

  /// -- Light Theme
  static final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      // backgroundColor: Colors.blue,
      backgroundColor: Colors.transparent,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: OColors.primary),
      padding: EdgeInsets.symmetric(vertical: 18.h),
      textStyle: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    ),
  );


  /// -- Dark Theme
  static final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blueGrey.withOpacity(.8),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blueGrey),
      padding: EdgeInsets.symmetric(vertical: 18.h),
      textStyle: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    ),
  );
}