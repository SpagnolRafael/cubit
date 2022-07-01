// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
  String get name => throw _privateConstructorUsedError;
  String get cpf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res>;
  $Res call({String name, String cpf});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res> implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  final Client _value;
  // ignore: unused_field
  final $Res Function(Client) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cpf = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$_ClientCopyWith(_$_Client value, $Res Function(_$_Client) then) =
      __$$_ClientCopyWithImpl<$Res>;
  @override
  $Res call({String name, String cpf});
}

/// @nodoc
class __$$_ClientCopyWithImpl<$Res> extends _$ClientCopyWithImpl<$Res>
    implements _$$_ClientCopyWith<$Res> {
  __$$_ClientCopyWithImpl(_$_Client _value, $Res Function(_$_Client) _then)
      : super(_value, (v) => _then(v as _$_Client));

  @override
  _$_Client get _value => super._value as _$_Client;

  @override
  $Res call({
    Object? name = freezed,
    Object? cpf = freezed,
  }) {
    return _then(_$_Client(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Client implements _Client {
  _$_Client({required this.name, required this.cpf});

  factory _$_Client.fromJson(Map<String, dynamic> json) =>
      _$$_ClientFromJson(json);

  @override
  final String name;
  @override
  final String cpf;

  @override
  String toString() {
    return 'Client(name: $name, cpf: $cpf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Client &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cpf, cpf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cpf));

  @JsonKey(ignore: true)
  @override
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      __$$_ClientCopyWithImpl<_$_Client>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientToJson(this);
  }
}

abstract class _Client implements Client {
  factory _Client({required final String name, required final String cpf}) =
      _$_Client;

  factory _Client.fromJson(Map<String, dynamic> json) = _$_Client.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get cpf => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      throw _privateConstructorUsedError;
}
