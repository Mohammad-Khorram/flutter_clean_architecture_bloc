import 'package:store/feature/user/profile/domain/entity/profile_response_entity.dart';

class ProfileResponseModel extends ProfileResponseEntity {
  const ProfileResponseModel({
    int? id,
    String? email,
    String? userName,
    String? password,
    ProfileNameModel? name,
    String? phone,
  }) : super(
          id: id,
          email: email,
          userName: userName,
          password: password,
          name: name,
          phone: phone,
        );

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      ProfileResponseModel(
        id: json['id'],
        email: json['email'],
        userName: json['username'],
        password: json['password'],
        name: json['name'] != null
            ? ProfileNameModel.fromJson(json['name'])
            : null,
        phone: json['phone'],
      );
}

class ProfileNameModel {
  String? firstName;
  String? lastName;

  ProfileNameModel({this.firstName, this.lastName});

  ProfileNameModel.fromJson(Map<String, dynamic> json) {
    firstName = json['firstname'];
    lastName = json['lastname'];
  }
}
