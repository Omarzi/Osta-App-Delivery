import 'package:osta_app_delivery/utils/constants/exports.dart';

class OSearchContainer extends StatelessWidget {
  const OSearchContainer({
    super.key, required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.height = 200,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: ODeviceUtils.getScreenWidth(context),
        height: height,
        padding: EdgeInsets.all(OSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? OColors.dark : OColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(OSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: dark ? OColors.dark : OColors.grey) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: dark ? OColors.lightGrey : OColors.darkGrey),
            SizedBox(width: OSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}