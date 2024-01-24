import '../constants/exports.dart';

class DAppTheme {
  DAppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    String fontFamily =
    BlocProvider.of<LanguageCubit>(context).getSavedLanguage == true
        ? 'Poppins'
        : 'Cairo';

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: DTextTheme.lightTextTheme,
      chipTheme: DChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: DAppBarTheme.lightAppBarTheme,
      checkboxTheme: DCheckBoxTheme.lightCheckboxTheme,
      bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    String fontFamily =
    BlocProvider.of<LanguageCubit>(context).getSavedLanguage == true
        ? 'Poppins'
        : 'Cairo';

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: DTextTheme.darkTextTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: DAppBarTheme.darkAppBarTheme,
      checkboxTheme: DCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: DBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: DTextFormFieldTheme.darkInputDecorationTheme,
    );
  }
}
