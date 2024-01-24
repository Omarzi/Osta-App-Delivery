import 'package:osta_app_delivery/utils/constants/exports.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(OSizes.defaultSpace),
      child: Column(
        children: [
          SizedBox(height: OSizes.spaceBtwSections * 2.4),
          SvgPicture.asset(
            image,
            width: OHelperFunctions.screenWidth(context) * 0.8,
            height: OHelperFunctions.screenHeight(context) * 0.5,
          ),
          // Image(
          //   width: OHelperFunctions.screenWidth(context) * 0.8,
          //   height: OHelperFunctions.screenHeight(context) * 0.6,
          //   image: AssetImage(image),
          // ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: OSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
