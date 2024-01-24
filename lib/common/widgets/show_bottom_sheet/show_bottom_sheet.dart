import 'package:osta_app_delivery/utils/language/language_helper.dart';

import '../../../utils/constants/exports.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Text
          Text('languages'.tr(context), style: Theme.of(context).textTheme.titleMedium!.copyWith(decoration: TextDecoration.underline)),

          /// Make Space
          SizedBox(height: OSizes.defaultSpace),

          /// English
          InkWell(
            onTap: () {
              BlocProvider.of<LanguageCubit>(context).changeLanguage('en');
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
            overlayColor: dark ? MaterialStateProperty.all(OColors.primaryBackground.withOpacity(.02)) : MaterialStateProperty.all(OColors.primary.withOpacity(.02)),
            child: selectedLanguage('english'.tr(context), OCacheHelper.getCachedLanguage() == 'en' ? true : false, dark, context),
          ),

          /// Make Space
          SizedBox(height: OSizes.defaultSpace),

          /// Arabic
          InkWell(
            onTap: () {
              BlocProvider.of<LanguageCubit>(context).changeLanguage('ar');
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
            overlayColor: dark ? MaterialStateProperty.all(OColors.primaryBackground.withOpacity(.02)) : MaterialStateProperty.all(OColors.primary.withOpacity(.02)),
            child: selectedLanguage('arabic'.tr(context), OCacheHelper.getCachedLanguage() == 'ar' ? true : false, dark, context),
          )
        ],
      ),
    );
  }

  /// Toggle Language
  Widget selectedLanguage(String text, bool selected, bool dark, BuildContext context) {
    if (selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Languages
          Text(text, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: dark ? OColors.primaryDark : OColors.primary)),
          /// Check Icons
          Icon(Icons.check, color: dark ? OColors.primaryDark : OColors.primary),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Theme.of(context).textTheme.titleSmall),
          const Icon(Icons.check),
        ],
      );
    }
  }
}
