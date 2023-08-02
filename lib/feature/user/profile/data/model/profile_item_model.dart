import 'package:store/config/enumeration/enumeration.dart';

class ProfileItemModel {
  final String title;
  final String value;
  final ItemDividerType? type;

  ProfileItemModel({
    required this.title,
    required this.value,
    this.type = ItemDividerType.divider,
  });
}
