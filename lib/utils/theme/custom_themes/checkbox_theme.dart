import 'package:osta_app_delivery/utils/constants/exports.dart';

class DCheckBoxTheme {
  DCheckBoxTheme._();

  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)) {
        return OColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)) {
        return Colors.blueGrey.withOpacity(.8);
      } else {
        return Colors.transparent;
      }
    }),
  );
}