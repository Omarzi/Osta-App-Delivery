import 'package:osta_app_delivery/utils/constants/exports.dart';
import 'package:osta_app_delivery/utils/language/language_helper.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ODeviceUtils.getScreenWidth(context) * .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// No Connection Image
              SvgPicture.asset(OImages.noConnection, width: OSizes.buttonWidth, height: OSizes.productItemHeight),
              SizedBox(height: OSizes.spaceBtwSections),

              /// Title Text, SubTitleText
              Text("connectionLost".tr(context), style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: OSizes.dividerHeight * 8),
              Text("pleaseCheckYourInternet".tr(context), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.darkGrey),),
              SizedBox(height: OSizes.spaceBtwSections),

              /// Button (Try Again)
              CustomButton(buttonText: "dContinue".tr(context), onPressed: () => context.pop()),
              // SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => context.pop(), child: Text("dContinue".tr(context), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.white),))),
            ],
          ),
        ),
      ),
    );
  }
}
