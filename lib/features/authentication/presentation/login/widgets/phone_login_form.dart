import 'package:osta_app_delivery/common/widgets/custom_popup_menu/custom_popup_menu.dart';
import 'package:osta_app_delivery/routing/routes_name.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';
import 'package:osta_app_delivery/utils/formatters/formatter.dart';
import 'package:osta_app_delivery/utils/language/language_helper.dart';

class OLoginForm extends StatefulWidget {
  const OLoginForm({super.key});

  @override
  State<OLoginForm> createState() => _OLoginFormState();
}

class _OLoginFormState extends State<OLoginForm> {
  bool isShowed = true;
  String selectedCountryCode = '+20';
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> phoneLoginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: phoneLoginFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Phone Number
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'phoneNumber'.tr(context),
                suffixIcon: const Icon(Iconsax.call),
                prefixIcon: CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value)),
              ),
              validator: (value) => OFormatter.formatPhoneNumber(value, selectedCountryCode),
            ),
            SizedBox(height: OSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: isShowed,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(prefixIcon: const Icon(Iconsax.password_check), labelText: "password".tr(context), suffixIcon: IconButton(onPressed: () {
                setState(() {
                  isShowed = !isShowed;
                });
              }, icon: Icon(isShowed ? Iconsax.eye_slash : Iconsax.eye)),
              ),
            ),
            SizedBox(height: OSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {},),
                    Text("rememberMe".tr(context)),
                  ],
                ),

                /// Forget Password
                TextButton(onPressed: () => context.pushNamed(ORoutesName.forgetPasswordRoute), child: Text("forgetPassword".tr(context))),
              ],
            ),
            SizedBox(height: OSizes.spaceBtwSections),

            /// Sign In Button
            CustomButton(buttonText: "singIn".tr(context), onPressed: () {if(phoneLoginFormKey.currentState!.validate()) {context.pushNamed(ORoutesName.allDataLoginRoute);}}),

            SizedBox(height: OSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () => context.pushNamed(ORoutesName.signupRoute), child: Text("createAccount".tr(context))),
            ),
          ],
        ),
      ),
    );
  }
}