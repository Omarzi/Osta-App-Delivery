import '../../../utils/constants/exports.dart';

class OSocialButtons extends StatelessWidget {
  const OSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
              image: const AssetImage(OImages.google),
            ),
          ),
        ),

        /// Make Some Space
        SizedBox(width: OSizes.spaceBtwItems),

        /// Facebook Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
              image: const AssetImage(OImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
