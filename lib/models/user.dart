import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
part 'user.g.dart';

@JsonSerializable()

class User {
  int? id;
  String username;
  String password;

  User({this.id, required this.username, required this.password});

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
