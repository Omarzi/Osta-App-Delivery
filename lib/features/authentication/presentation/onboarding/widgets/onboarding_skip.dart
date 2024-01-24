import 'package:osta_app_delivery/features/authentication/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnBoardingCubit>();

    return Positioned(
      top: ODeviceUtils.getAppBarHeight(),
      right: OSizes.defaultSpace,
      child: TextButton(
        onPressed: () => cubit.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
