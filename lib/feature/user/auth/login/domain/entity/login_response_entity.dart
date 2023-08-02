import 'package:equatable/equatable.dart';

class LoginResponseEntity extends Equatable {
  final String? token;

  const LoginResponseEntity({this.token});

  @override
  List<Object?> get props => [];
}
