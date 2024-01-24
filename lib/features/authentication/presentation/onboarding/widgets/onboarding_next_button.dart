import 'package:osta_app_delivery/features/authentication/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnBoardingCubit>();
    final dark = OHelperFunctions.isDarkMode(context);

    return Positioned(
      right: OSizes.defaultSpace,
      bottom: ODeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          backgroundColor: dark ? OColors.primary : OColors.primary,
          fixedSize: Size(60.w, 62.h),
        ),
        onPressed: () => cubit.nextPage(context: context),
        child: Icon(Icons.arrow_forward, size: 24.sp),
      ),
    );
  }
}