import 'package:osta_app_delivery/utils/constants/exports.dart';

class DAppBarTheme {
  DAppBarTheme._();

  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: OColors.black, size: OSizes.iconMd),
    actionsIconTheme: IconThemeData(color: OColors.black, size: OSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: OColors.black),
  );

  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: OColors.white, size: OSizes.iconMd),
    actionsIconTheme: IconThemeData(color: OColors.white, size: OSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: OColors.white),
  );
}