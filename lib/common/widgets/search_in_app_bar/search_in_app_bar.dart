import 'package:osta_app_delivery/utils/language/language_helper.dart';
import '../../../utils/constants/exports.dart';

class CustomSearchInAppBar extends StatelessWidget {
  const CustomSearchInAppBar({super.key, required this.suffixIcon, required this.onChanged});

  final void Function(String) onChanged;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      cursorColor: OColors.primary,
      style: Theme.of(context).textTheme.bodyMedium,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'search'.tr(context),
        hintStyle: Theme.of(context).textTheme.titleMedium,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: OColors.grey,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: OColors.grey,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}