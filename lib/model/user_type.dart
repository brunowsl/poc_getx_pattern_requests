// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserType {
  String id;
  String name;

  UserType({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory UserType.fromMap(Map<String, dynamic> map) {
    return UserType(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserType.fromJson(String source) =>
      UserType.fromMap(json.decode(source) as Map<String, dynamic>);
}
