import 'package:freezed_annotation/freezed_annotation.dart';

part 'clients.freezed.dart';
part 'clients.g.dart';

@freezed
class Client with _$Client {
  factory Client({
    required String name,
    required String cpf,
  }) = _Client;
  factory Client.fromJson(Map<String, Object?> json) => _$ClientFromJson(json);
}
