import '../../../utils/constants/exports.dart';

class OFormDivider extends StatelessWidget {
  const OFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? OColors.darkerGrey : OColors.grey, thickness: 0.5, indent: 20, endIndent: 5,)),
        Text(dividerText.toUpperCase(), style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? OColors.darkerGrey : OColors.grey, thickness: 0.5, indent:20, endIndent: 5,)),
      ],
    );
  }
}
