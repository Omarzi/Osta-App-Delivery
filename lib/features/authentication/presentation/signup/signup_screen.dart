import 'package:flutter/material.dart';
import 'package:osta_app_delivery/common/widgets/appbar/appbar.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: OAppBar(
        showBackArrow: true,
        actions: [
          SvgPicture.asset(OImages.appIcon2, width: OSizes.productImageSize, color: dark ? Colors.blueGrey : null, height: OSizes.buttonHeight * 1.6),
          SizedBox(width: OSizes.defaultSpace),
        ],
      ),
    );
  }
}
