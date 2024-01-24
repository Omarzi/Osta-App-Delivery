import 'package:osta_app_delivery/common/styles/spacing_styles.dart';
import 'package:osta_app_delivery/common/widgets/login_signup/form_divider.dart';
import 'package:osta_app_delivery/common/widgets/login_signup/social_buttons.dart';
import 'package:osta_app_delivery/features/authentication/presentation/login/widgets/login_header.dart';
import 'package:osta_app_delivery/features/authentication/presentation/login/widgets/phone_login_form.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const OLoginHeader(),

              /// Form
              const OLoginForm(),

              /// Divider
              const OFormDivider(dividerText: '  or sign in with'),
              SizedBox(height: OSizes.spaceBtwItems),

              /// Footer
              const OSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
