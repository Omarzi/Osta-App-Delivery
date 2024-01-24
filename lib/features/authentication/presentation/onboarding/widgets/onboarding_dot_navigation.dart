import 'package:osta_app_delivery/features/authentication/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnBoardingCubit>();
    final dark = OHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ODeviceUtils.getBottomNavigationBarHeight() + 25,
      left: OSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: cubit.pageController,
        onDotClicked: cubit.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? OColors.primary : OColors.primary,
          dotHeight: 6,
        ),
      ),
    );
  }
}