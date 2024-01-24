import 'package:osta_app_delivery/features/authentication/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:osta_app_delivery/features/authentication/presentation/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:osta_app_delivery/features/authentication/presentation/onboarding/widgets/onboarding_next_button.dart';
import 'package:osta_app_delivery/features/authentication/presentation/onboarding/widgets/onboarding_page.dart';
import 'package:osta_app_delivery/features/authentication/presentation/onboarding/widgets/onboarding_skip.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Builder(
      builder: (BuildContext context) {
        final cubit = context.read<OnBoardingCubit>();

        return Scaffold(
          body: Stack(
            children: [

              /// Horizontal Scrollable Page
              PageView(
                controller: cubit.pageController,
                onPageChanged: cubit.updatePageIndicator,
                children: const [
                  OnBoardingPage(
                    image: OImages.onBoardingImage1,
                    title: 'Construction services',
                    subTitle: 'Welcome to a World of Limitless Choice - Your Perfect Product Awaits!',
                  ),
                  OnBoardingPage(
                    image: OImages.onBoardingImage2,
                    title: 'Ease of requesting the service',
                    subTitle: 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!',
                  ),
                  OnBoardingPage(
                    image: OImages.onBoardingImage3,
                    title: 'Deliver at your door step',
                    subTitle: 'From Our Doorstep to Your - Swift, Secure, and Contactless Delivery!',
                  ),
                ],
              ),

              /// Skip Button
              const OnBoardingSkip(),

              /// Dot Navigation SmoothPageIndicator
              const OnBoardingDotNavigation(),

              /// Circular Button
              const OnBoardingNextButton(),
            ],
          ),
        );
      },
    );
  }
}
