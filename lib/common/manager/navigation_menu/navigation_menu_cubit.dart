import 'package:osta_app_delivery/utils/constants/exports.dart';

class NavigationMenuCubit extends Cubit<int> {
  NavigationMenuCubit() : super(2);

  void setSelectedIndex(int index) {
    emit(index);
  }
}