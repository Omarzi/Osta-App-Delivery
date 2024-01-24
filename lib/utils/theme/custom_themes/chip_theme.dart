import 'package:osta_app_delivery/utils/constants/exports.dart';

class DChipTheme {
  DChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
    checkmarkColor: Colors.white,
  );
}