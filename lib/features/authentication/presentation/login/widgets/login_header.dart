import 'package:osta_app_delivery/utils/constants/exports.dart';
import 'package:osta_app_delivery/utils/language/language_helper.dart';

class OLoginHeader extends StatelessWidget {
  const OLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: OSizes.defaultSpace),
            // Image(image: const AssetImage(DImages.appIconSVG), width: DSizes.productImageSize),
            SvgPicture.asset(OImages.appIcon2, width: OSizes.productImageSize, color: dark ? Colors.blueGrey : null, height: OSizes.buttonHeight * 3),
            SizedBox(height: OSizes.spaceBtwSections),
            Text("welcomeBack".tr(context), style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: OSizes.sm),
            Text("loginSubTitle".tr(context), style: Theme.of(context).textTheme.headlineMedium),
          ],
        );
      },
    );
  }
}
