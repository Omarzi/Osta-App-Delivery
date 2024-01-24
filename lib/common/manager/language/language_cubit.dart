import 'package:osta_app_delivery/utils/constants/exports.dart';
part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  bool isEnglish = true;
  bool isDarkMode = false;

  LanguageCubit() : super(LanguageInitial());

  void getSavedLanguage() {
    final cachedLanguageCode = OCacheHelper.getCachedLanguage();
    isEnglish = (cachedLanguageCode == 'en');
    emit(ChangeLanguageState(locale: Locale(cachedLanguageCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
    await OCacheHelper.cacheLanguage(languageCode);
    isEnglish = (languageCode == 'en');
    emit(ChangeLanguageState(locale: Locale(languageCode)));
  }
}