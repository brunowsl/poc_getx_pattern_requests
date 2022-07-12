import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class FuncionarioFuncional {
  int id;
  FuncionarioFuncional({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory FuncionarioFuncional.fromMap(Map<String, dynamic> map) {
    return FuncionarioFuncional(
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory FuncionarioFuncional.fromJson(String source) =>
      FuncionarioFuncional.fromMap(json.decode(source) as Map<String, dynamic>);
}
