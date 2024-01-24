import 'package:osta_app_delivery/utils/constants/exports.dart';
import 'package:osta_app_delivery/utils/language/language_helper.dart';

class OTermsAndConditionCheckbox extends StatelessWidget {
  const OTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24.w,
            height: 24.h,
            child: Checkbox(value: true, onChanged: (value) {})),
        SizedBox(width: OSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: '${"iAgreeTo".tr(context)} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "privacyPolicy".tr(context),
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? OColors.white : OColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                      dark ? OColors.white : OColors.primary,
                    )),
                TextSpan(
                    text: ' ${"and".tr(context)} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "termsOfUse".tr(context),
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? OColors.white : OColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                        dark ? OColors.white : OColors.primary,
                        overflow: TextOverflow.clip)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
