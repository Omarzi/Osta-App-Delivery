import 'package:osta_app_delivery/utils/constants/exports.dart';

part 'check_connection_state.dart';

CheckConnectionCubit get connectionCubit => CheckConnectionCubit.get(navigatorKey.currentContext!);

class CheckConnectionCubit extends Cubit<CheckConnectionState> {
  CheckConnectionCubit() : super(CheckConnectionInitial());

  static CheckConnectionCubit get(context) => BlocProvider.of(context);

  // ------------------------ Connectivity ------------------------
  bool isInternetConnected = true;

  void setIsInternetConnected(bool hasConnection) {
    isInternetConnected = hasConnection;
    emit(InternetConnectionChangeState());
  }
}
