import 'package:equatable/equatable.dart';
import 'package:store/config/boiler/model_boiler.dart';

class ProfileResponseEntity extends Equatable {
  final int? id;
  final String? email;
  final String? userName;
  final String? password;
  final ProfileNameModel? name;
  final String? phone;

   const ProfileResponseEntity({
    this.id,
    this.email,
    this.userName,
    this.password,
    this.name,
    this.phone,
  });

  @override
  List<Object?> get props => [];
}