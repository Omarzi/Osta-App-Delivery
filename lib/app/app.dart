import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:osta_app_delivery/common/manager/navigation_menu/navigation_menu_cubit.dart';
import 'package:osta_app_delivery/common/widgets/primary_connectivity_wrapper/primary_connectivity_wrapper.dart';
import 'package:osta_app_delivery/features/authentication/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:osta_app_delivery/routing/routes.dart';
import 'package:osta_app_delivery/routing/routes_name.dart';
import 'package:osta_app_delivery/utils/language/language_helper.dart';
import 'package:osta_app_delivery/utils/theme/theme.dart';

import '../utils/constants/exports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LanguageCubit()..getSavedLanguage()),
            BlocProvider(create: (context) => OnBoardingCubit()),
            BlocProvider(create: (context) => CheckConnectionCubit()),
            BlocProvider<NavigationMenuCubit>(create: (context) => NavigationMenuCubit()),
          ],
          child: BlocBuilder<CheckConnectionCubit, CheckConnectionState>(
            builder: (context, state) {
              return BlocBuilder<LanguageCubit, LanguageState>(
                builder: (context, state) {
                  if(state is ChangeLanguageState) {
                    return PrimaryConnectivityWrapper(
                      child: MaterialApp(
                        debugShowCheckedModeBanner: false,
                        locale: state.locale,
                        supportedLocales: const [
                          Locale('en', ''),
                          Locale('ar', ''),
                        ],
                        localizationsDelegates: [
                          OLanguageHelper.delegate,
                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ],
                        localeResolutionCallback: (currentLocal, supportedLocales) {
                          for (var locale in supportedLocales) {
                            if (currentLocal != null &&
                                currentLocal.languageCode == locale.languageCode) {
                              return currentLocal;
                            }
                          }
                          return supportedLocales.first;
                        },
                        themeMode: ThemeMode.system,
                        theme: DAppTheme.lightTheme(context),
                        darkTheme: DAppTheme.darkTheme(context),
                        navigatorKey: navigatorKey,
                        onGenerateRoute: RouteGenerator.getRoute,
                        // initialRoute: ORoutesName.loginRoute,
                        initialRoute: ORoutesName.splashRoute,
                        // initialRoute: ORoutesName.onBoardingRoute,
                      ),
                    );
                  }
                  return const SizedBox();
                },
              );
            },
          ),
        );
      },
    );
  }
}
