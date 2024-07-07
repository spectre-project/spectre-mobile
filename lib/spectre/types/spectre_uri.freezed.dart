// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spectre_uri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpectreUriParam {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpectreUriParamCopyWith<SpectreUriParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpectreUriParamCopyWith<$Res> {
  factory $SpectreUriParamCopyWith(
          SpectreUriParam value, $Res Function(SpectreUriParam) then) =
      _$SpectreUriParamCopyWithImpl<$Res, SpectreUriParam>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$SpectreUriParamCopyWithImpl<$Res, $Val extends SpectreUriParam>
    implements $SpectreUriParamCopyWith<$Res> {
  _$SpectreUriParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpectreUriParamImplCopyWith<$Res>
    implements $SpectreUriParamCopyWith<$Res> {
  factory _$$SpectreUriParamImplCopyWith(
          _$SpectreUriParamImpl value, $Res Function(_$SpectreUriParamImpl) then) =
      __$$SpectreUriParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$SpectreUriParamImplCopyWithImpl<$Res>
    extends _$SpectreUriParamCopyWithImpl<$Res, _$SpectreUriParamImpl>
    implements _$$SpectreUriParamImplCopyWith<$Res> {
  __$$SpectreUriParamImplCopyWithImpl(
      _$SpectreUriParamImpl _value, $Res Function(_$SpectreUriParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$SpectreUriParamImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpectreUriParamImpl extends _SpectreUriParam {
  const _$SpectreUriParamImpl({required this.key, required this.value})
      : super._();

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'SpectreUriParam(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpectreUriParamImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpectreUriParamImplCopyWith<_$SpectreUriParamImpl> get copyWith =>
      __$$SpectreUriParamImplCopyWithImpl<_$SpectreUriParamImpl>(this, _$identity);
}

abstract class _SpectreUriParam extends SpectreUriParam {
  const factory _SpectreUriParam(
      {required final String key,
      required final String value}) = _$SpectreUriParamImpl;
  const _SpectreUriParam._() : super._();

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SpectreUriParamImplCopyWith<_$SpectreUriParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpectreUri {
  Address get address => throw _privateConstructorUsedError;
  Amount? get amount => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  IList<SpectreUriParam> get others => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpectreUriCopyWith<SpectreUri> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpectreUriCopyWith<$Res> {
  factory $SpectreUriCopyWith(SpectreUri value, $Res Function(SpectreUri) then) =
      _$SpectreUriCopyWithImpl<$Res, SpectreUri>;
  @useResult
  $Res call(
      {Address address,
      Amount? amount,
      String? label,
      String? message,
      IList<SpectreUriParam> others});

  $AddressCopyWith<$Res> get address;
  $AmountCopyWith<$Res>? get amount;
}

/// @nodoc
class _$SpectreUriCopyWithImpl<$Res, $Val extends SpectreUri>
    implements $SpectreUriCopyWith<$Res> {
  _$SpectreUriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? others = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as IList<SpectreUriParam>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $AmountCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpectreUriImplCopyWith<$Res>
    implements $SpectreUriCopyWith<$Res> {
  factory _$$SpectreUriImplCopyWith(
          _$SpectreUriImpl value, $Res Function(_$SpectreUriImpl) then) =
      __$$SpectreUriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Amount? amount,
      String? label,
      String? message,
      IList<SpectreUriParam> others});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $AmountCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$SpectreUriImplCopyWithImpl<$Res>
    extends _$SpectreUriCopyWithImpl<$Res, _$SpectreUriImpl>
    implements _$$SpectreUriImplCopyWith<$Res> {
  __$$SpectreUriImplCopyWithImpl(
      _$SpectreUriImpl _value, $Res Function(_$SpectreUriImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? others = null,
  }) {
    return _then(_$SpectreUriImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as IList<SpectreUriParam>,
    ));
  }
}

/// @nodoc

class _$SpectreUriImpl extends _SpectreUri {
  const _$SpectreUriImpl(
      {required this.address,
      this.amount,
      this.label,
      this.message,
      this.others = const IListConst([])})
      : super._();

  @override
  final Address address;
  @override
  final Amount? amount;
  @override
  final String? label;
  @override
  final String? message;
  @override
  @JsonKey()
  final IList<SpectreUriParam> others;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpectreUriImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.others, others));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, amount, label, message,
      const DeepCollectionEquality().hash(others));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpectreUriImplCopyWith<_$SpectreUriImpl> get copyWith =>
      __$$SpectreUriImplCopyWithImpl<_$SpectreUriImpl>(this, _$identity);
}

abstract class _SpectreUri extends SpectreUri {
  const factory _SpectreUri(
      {required final Address address,
      final Amount? amount,
      final String? label,
      final String? message,
      final IList<SpectreUriParam> others}) = _$SpectreUriImpl;
  const _SpectreUri._() : super._();

  @override
  Address get address;
  @override
  Amount? get amount;
  @override
  String? get label;
  @override
  String? get message;
  @override
  IList<SpectreUriParam> get others;
  @override
  @JsonKey(ignore: true)
  _$$SpectreUriImplCopyWith<_$SpectreUriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
