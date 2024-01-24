import 'dart:async';
import 'package:osta_app_delivery/routing/routes_name.dart';

import '../../../utils/constants/exports.dart';

class PrimaryConnectivityWrapper extends StatefulWidget {
  final Widget child;

  const PrimaryConnectivityWrapper({Key? key, required this.child}) : super(key: key);

  @override
  _PrimaryConnectivityWrapperState createState() => _PrimaryConnectivityWrapperState();
}

class _PrimaryConnectivityWrapperState extends State<PrimaryConnectivityWrapper> {
  late StreamSubscription<InternetConnectionStatus> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = InternetConnectionChecker.createInstance(checkInterval: const Duration(seconds: 5)).onStatusChange.listen((status) {
      /// Handle connectivity change
      connectionCubit.setIsInternetConnected(status == InternetConnectionStatus.connected);
      if (connectionCubit.isInternetConnected) {
        OHelperFunctions.showSnackBar('✅ You are now connected to the Internet ᯤ.', context);
      } else {
        Navigator.pushNamed(navigatorKey.currentContext!, ORoutesName.noConnectionRoute);
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<InternetConnectionStatus>(
      stream: InternetConnectionChecker().onStatusChange,
      initialData: InternetConnectionStatus.connected,
      builder: (context, snapshot) {
        return widget.child;
      },
    );
  }
}