import 'package:osta_app_delivery/features/authentication/managers/onboarding_cubit/onboarding_state.dart';
import 'package:osta_app_delivery/routing/routes_name.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState(0));

  final PageController pageController = PageController();

  // Functions
  void updatePageIndicator(int index) {
    emit(OnBoardingState(index));
  }

  void dotNavigationClick(int index) {
    emit(OnBoardingState(index));
    pageController.jumpTo(index.toDouble());
  }

  void nextPage({required BuildContext context}) {
    final currentState = state;
    if (currentState.currentPageIndex == 2) {
      context.pushNamed(ORoutesName.loginRoute);
      // context.pushNamed(ORoutesName.loginRoute);
    } else {
      final nextPage = currentState.currentPageIndex + 1;
      pageController.jumpToPage(nextPage);
      emit(OnBoardingState(nextPage));
    }
  }

  void skipPage() {
    pageController.jumpToPage(2);
    emit(OnBoardingState(2));
  }
}