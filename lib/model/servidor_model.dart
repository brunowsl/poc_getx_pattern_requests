// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ServidorModel {
  String nome;
  int matricula;
  String lotacaoExercicio;
  String lotacaoOrigem;
  ServidorModel({
    required this.nome,
    required this.matricula,
    required this.lotacaoExercicio,
    required this.lotacaoOrigem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'matricula': matricula,
      'lotacaoExercicio': lotacaoExercicio,
      'lotacaoOrigem': lotacaoOrigem,
    };
  }

  factory ServidorModel.fromMap(Map<String, dynamic> map) {
    return ServidorModel(
      nome: map['nome'] as String,
      matricula: map['matricula'] as int,
      lotacaoExercicio: map['lotacaoExercicio'] as String,
      lotacaoOrigem: map['lotacaoOrigem'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServidorModel.fromJson(String source) =>
      ServidorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
