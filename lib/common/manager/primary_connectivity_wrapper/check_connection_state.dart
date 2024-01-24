part of 'check_connection_cubit.dart';


abstract class CheckConnectionState {}

class CheckConnectionInitial extends CheckConnectionState {}

class InternetConnectionChangeState extends CheckConnectionState {}