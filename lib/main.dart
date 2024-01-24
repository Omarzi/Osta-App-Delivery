import 'package:flutter/services.dart';
import 'package:osta_app_delivery/app/app.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ODeviceUtils.setStatusBarColor(OColors.transparent);
  ODeviceUtils.initCacheHelper();
  ODeviceUtils.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await OCacheHelper.init();
  runApp(const MyApp());
}