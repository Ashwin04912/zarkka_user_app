// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddAddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressEventCopyWith<$Res> {
  factory $AddAddressEventCopyWith(
          AddAddressEvent value, $Res Function(AddAddressEvent) then) =
      _$AddAddressEventCopyWithImpl<$Res, AddAddressEvent>;
}

/// @nodoc
class _$AddAddressEventCopyWithImpl<$Res, $Val extends AddAddressEvent>
    implements $AddAddressEventCopyWith<$Res> {
  _$AddAddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomePressedImplCopyWith<$Res> {
  factory _$$HomePressedImplCopyWith(
          _$HomePressedImpl value, $Res Function(_$HomePressedImpl) then) =
      __$$HomePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePressedImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$HomePressedImpl>
    implements _$$HomePressedImplCopyWith<$Res> {
  __$$HomePressedImplCopyWithImpl(
      _$HomePressedImpl _value, $Res Function(_$HomePressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomePressedImpl implements _HomePressed {
  const _$HomePressedImpl();

  @override
  String toString() {
    return 'AddAddressEvent.homePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return homePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return homePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (homePressed != null) {
      return homePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return homePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return homePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (homePressed != null) {
      return homePressed(this);
    }
    return orElse();
  }
}

abstract class _HomePressed implements AddAddressEvent {
  const factory _HomePressed() = _$HomePressedImpl;
}

/// @nodoc
abstract class _$$WorkPressedImplCopyWith<$Res> {
  factory _$$WorkPressedImplCopyWith(
          _$WorkPressedImpl value, $Res Function(_$WorkPressedImpl) then) =
      __$$WorkPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkPressedImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$WorkPressedImpl>
    implements _$$WorkPressedImplCopyWith<$Res> {
  __$$WorkPressedImplCopyWithImpl(
      _$WorkPressedImpl _value, $Res Function(_$WorkPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WorkPressedImpl implements _WorkPressed {
  const _$WorkPressedImpl();

  @override
  String toString() {
    return 'AddAddressEvent.workPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return workPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return workPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (workPressed != null) {
      return workPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return workPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return workPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (workPressed != null) {
      return workPressed(this);
    }
    return orElse();
  }
}

abstract class _WorkPressed implements AddAddressEvent {
  const factory _WorkPressed() = _$WorkPressedImpl;
}

/// @nodoc
abstract class _$$OthersPressedImplCopyWith<$Res> {
  factory _$$OthersPressedImplCopyWith(
          _$OthersPressedImpl value, $Res Function(_$OthersPressedImpl) then) =
      __$$OthersPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OthersPressedImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$OthersPressedImpl>
    implements _$$OthersPressedImplCopyWith<$Res> {
  __$$OthersPressedImplCopyWithImpl(
      _$OthersPressedImpl _value, $Res Function(_$OthersPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OthersPressedImpl implements _OthersPressed {
  const _$OthersPressedImpl();

  @override
  String toString() {
    return 'AddAddressEvent.othersPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OthersPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return othersPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return othersPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (othersPressed != null) {
      return othersPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return othersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return othersPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (othersPressed != null) {
      return othersPressed(this);
    }
    return orElse();
  }
}

abstract class _OthersPressed implements AddAddressEvent {
  const factory _OthersPressed() = _$OthersPressedImpl;
}

/// @nodoc
abstract class _$$SubmitPressedImplCopyWith<$Res> {
  factory _$$SubmitPressedImplCopyWith(
          _$SubmitPressedImpl value, $Res Function(_$SubmitPressedImpl) then) =
      __$$SubmitPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String contact,
      String pinCode,
      String flat,
      String area,
      String landmark,
      String type});
}

/// @nodoc
class __$$SubmitPressedImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$SubmitPressedImpl>
    implements _$$SubmitPressedImplCopyWith<$Res> {
  __$$SubmitPressedImplCopyWithImpl(
      _$SubmitPressedImpl _value, $Res Function(_$SubmitPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contact = null,
    Object? pinCode = null,
    Object? flat = null,
    Object? area = null,
    Object? landmark = null,
    Object? type = null,
  }) {
    return _then(_$SubmitPressedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      flat: null == flat
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitPressedImpl implements _SubmitPressed {
  const _$SubmitPressedImpl(
      {required this.name,
      required this.contact,
      required this.pinCode,
      required this.flat,
      required this.area,
      required this.landmark,
      required this.type});

  @override
  final String name;
  @override
  final String contact;
  @override
  final String pinCode;
  @override
  final String flat;
  @override
  final String area;
  @override
  final String landmark;
  @override
  final String type;

  @override
  String toString() {
    return 'AddAddressEvent.submitPressed(name: $name, contact: $contact, pinCode: $pinCode, flat: $flat, area: $area, landmark: $landmark, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitPressedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.flat, flat) || other.flat == flat) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, contact, pinCode, flat, area, landmark, type);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitPressedImplCopyWith<_$SubmitPressedImpl> get copyWith =>
      __$$SubmitPressedImplCopyWithImpl<_$SubmitPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return submitPressed(name, contact, pinCode, flat, area, landmark, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return submitPressed?.call(
        name, contact, pinCode, flat, area, landmark, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(name, contact, pinCode, flat, area, landmark, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class _SubmitPressed implements AddAddressEvent {
  const factory _SubmitPressed(
      {required final String name,
      required final String contact,
      required final String pinCode,
      required final String flat,
      required final String area,
      required final String landmark,
      required final String type}) = _$SubmitPressedImpl;

  String get name;
  String get contact;
  String get pinCode;
  String get flat;
  String get area;
  String get landmark;
  String get type;

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitPressedImplCopyWith<_$SubmitPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getAllAddressImplCopyWith<$Res> {
  factory _$$getAllAddressImplCopyWith(
          _$getAllAddressImpl value, $Res Function(_$getAllAddressImpl) then) =
      __$$getAllAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getAllAddressImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$getAllAddressImpl>
    implements _$$getAllAddressImplCopyWith<$Res> {
  __$$getAllAddressImplCopyWithImpl(
      _$getAllAddressImpl _value, $Res Function(_$getAllAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getAllAddressImpl implements _getAllAddress {
  const _$getAllAddressImpl();

  @override
  String toString() {
    return 'AddAddressEvent.getAllAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getAllAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return getAllAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return getAllAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (getAllAddress != null) {
      return getAllAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return getAllAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return getAllAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (getAllAddress != null) {
      return getAllAddress(this);
    }
    return orElse();
  }
}

abstract class _getAllAddress implements AddAddressEvent {
  const factory _getAllAddress() = _$getAllAddressImpl;
}

/// @nodoc
abstract class _$$deleteButtonPressedImplCopyWith<$Res> {
  factory _$$deleteButtonPressedImplCopyWith(_$deleteButtonPressedImpl value,
          $Res Function(_$deleteButtonPressedImpl) then) =
      __$$deleteButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String addressId});
}

/// @nodoc
class __$$deleteButtonPressedImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$deleteButtonPressedImpl>
    implements _$$deleteButtonPressedImplCopyWith<$Res> {
  __$$deleteButtonPressedImplCopyWithImpl(_$deleteButtonPressedImpl _value,
      $Res Function(_$deleteButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$deleteButtonPressedImpl(
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteButtonPressedImpl implements _deleteButtonPressed {
  const _$deleteButtonPressedImpl({required this.addressId});

  @override
  final String addressId;

  @override
  String toString() {
    return 'AddAddressEvent.deleteButtonPressed(addressId: $addressId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteButtonPressedImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteButtonPressedImplCopyWith<_$deleteButtonPressedImpl> get copyWith =>
      __$$deleteButtonPressedImplCopyWithImpl<_$deleteButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return deleteButtonPressed(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return deleteButtonPressed?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (deleteButtonPressed != null) {
      return deleteButtonPressed(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return deleteButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return deleteButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (deleteButtonPressed != null) {
      return deleteButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _deleteButtonPressed implements AddAddressEvent {
  const factory _deleteButtonPressed({required final String addressId}) =
      _$deleteButtonPressedImpl;

  String get addressId;

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$deleteButtonPressedImplCopyWith<_$deleteButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCurrentLocationImplCopyWith<$Res> {
  factory _$$getCurrentLocationImplCopyWith(_$getCurrentLocationImpl value,
          $Res Function(_$getCurrentLocationImpl) then) =
      __$$getCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getCurrentLocationImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$getCurrentLocationImpl>
    implements _$$getCurrentLocationImplCopyWith<$Res> {
  __$$getCurrentLocationImplCopyWithImpl(_$getCurrentLocationImpl _value,
      $Res Function(_$getCurrentLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getCurrentLocationImpl implements _getCurrentLocation {
  const _$getCurrentLocationImpl();

  @override
  String toString() {
    return 'AddAddressEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return getCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return getCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _getCurrentLocation implements AddAddressEvent {
  const factory _getCurrentLocation() = _$getCurrentLocationImpl;
}

/// @nodoc
abstract class _$$editButtonPressedEventImplCopyWith<$Res> {
  factory _$$editButtonPressedEventImplCopyWith(
          _$editButtonPressedEventImpl value,
          $Res Function(_$editButtonPressedEventImpl) then) =
      __$$editButtonPressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String adddressId, AddressModel address});
}

/// @nodoc
class __$$editButtonPressedEventImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$editButtonPressedEventImpl>
    implements _$$editButtonPressedEventImplCopyWith<$Res> {
  __$$editButtonPressedEventImplCopyWithImpl(
      _$editButtonPressedEventImpl _value,
      $Res Function(_$editButtonPressedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adddressId = null,
    Object? address = null,
  }) {
    return _then(_$editButtonPressedEventImpl(
      adddressId: null == adddressId
          ? _value.adddressId
          : adddressId // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$editButtonPressedEventImpl implements _editButtonPressedEvent {
  const _$editButtonPressedEventImpl(
      {required this.adddressId, required this.address});

  @override
  final String adddressId;
  @override
  final AddressModel address;

  @override
  String toString() {
    return 'AddAddressEvent.editButtonPressedEvent(adddressId: $adddressId, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editButtonPressedEventImpl &&
            (identical(other.adddressId, adddressId) ||
                other.adddressId == adddressId) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adddressId, address);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$editButtonPressedEventImplCopyWith<_$editButtonPressedEventImpl>
      get copyWith => __$$editButtonPressedEventImplCopyWithImpl<
          _$editButtonPressedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return editButtonPressedEvent(adddressId, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return editButtonPressedEvent?.call(adddressId, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (editButtonPressedEvent != null) {
      return editButtonPressedEvent(adddressId, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return editButtonPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return editButtonPressedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (editButtonPressedEvent != null) {
      return editButtonPressedEvent(this);
    }
    return orElse();
  }
}

abstract class _editButtonPressedEvent implements AddAddressEvent {
  const factory _editButtonPressedEvent(
      {required final String adddressId,
      required final AddressModel address}) = _$editButtonPressedEventImpl;

  String get adddressId;
  AddressModel get address;

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$editButtonPressedEventImplCopyWith<_$editButtonPressedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$editSubmitButtonPressedEventImplCopyWith<$Res> {
  factory _$$editSubmitButtonPressedEventImplCopyWith(
          _$editSubmitButtonPressedEventImpl value,
          $Res Function(_$editSubmitButtonPressedEventImpl) then) =
      __$$editSubmitButtonPressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String contact,
      String pinCode,
      String flat,
      String area,
      String landmark,
      String addressId,
      String type});
}

/// @nodoc
class __$$editSubmitButtonPressedEventImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res,
        _$editSubmitButtonPressedEventImpl>
    implements _$$editSubmitButtonPressedEventImplCopyWith<$Res> {
  __$$editSubmitButtonPressedEventImplCopyWithImpl(
      _$editSubmitButtonPressedEventImpl _value,
      $Res Function(_$editSubmitButtonPressedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contact = null,
    Object? pinCode = null,
    Object? flat = null,
    Object? area = null,
    Object? landmark = null,
    Object? addressId = null,
    Object? type = null,
  }) {
    return _then(_$editSubmitButtonPressedEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      flat: null == flat
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$editSubmitButtonPressedEventImpl
    implements _editSubmitButtonPressedEvent {
  const _$editSubmitButtonPressedEventImpl(
      {required this.name,
      required this.contact,
      required this.pinCode,
      required this.flat,
      required this.area,
      required this.landmark,
      required this.addressId,
      required this.type});

  @override
  final String name;
  @override
  final String contact;
  @override
  final String pinCode;
  @override
  final String flat;
  @override
  final String area;
  @override
  final String landmark;
  @override
  final String addressId;
  @override
  final String type;

  @override
  String toString() {
    return 'AddAddressEvent.editSubmitButtonPressedEvent(name: $name, contact: $contact, pinCode: $pinCode, flat: $flat, area: $area, landmark: $landmark, addressId: $addressId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editSubmitButtonPressedEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.flat, flat) || other.flat == flat) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, contact, pinCode, flat,
      area, landmark, addressId, type);

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$editSubmitButtonPressedEventImplCopyWith<
          _$editSubmitButtonPressedEventImpl>
      get copyWith => __$$editSubmitButtonPressedEventImplCopyWithImpl<
          _$editSubmitButtonPressedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homePressed,
    required TResult Function() workPressed,
    required TResult Function() othersPressed,
    required TResult Function(String name, String contact, String pinCode,
            String flat, String area, String landmark, String type)
        submitPressed,
    required TResult Function() getAllAddress,
    required TResult Function(String addressId) deleteButtonPressed,
    required TResult Function() getCurrentLocation,
    required TResult Function(String adddressId, AddressModel address)
        editButtonPressedEvent,
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String addressId,
            String type)
        editSubmitButtonPressedEvent,
  }) {
    return editSubmitButtonPressedEvent(
        name, contact, pinCode, flat, area, landmark, addressId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult? Function()? getAllAddress,
    TResult? Function(String addressId)? deleteButtonPressed,
    TResult? Function()? getCurrentLocation,
    TResult? Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
  }) {
    return editSubmitButtonPressedEvent?.call(
        name, contact, pinCode, flat, area, landmark, addressId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String type)?
        submitPressed,
    TResult Function()? getAllAddress,
    TResult Function(String addressId)? deleteButtonPressed,
    TResult Function()? getCurrentLocation,
    TResult Function(String adddressId, AddressModel address)?
        editButtonPressedEvent,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String addressId, String type)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (editSubmitButtonPressedEvent != null) {
      return editSubmitButtonPressedEvent(
          name, contact, pinCode, flat, area, landmark, addressId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_getAllAddress value) getAllAddress,
    required TResult Function(_deleteButtonPressed value) deleteButtonPressed,
    required TResult Function(_getCurrentLocation value) getCurrentLocation,
    required TResult Function(_editButtonPressedEvent value)
        editButtonPressedEvent,
    required TResult Function(_editSubmitButtonPressedEvent value)
        editSubmitButtonPressedEvent,
  }) {
    return editSubmitButtonPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
    TResult? Function(_getAllAddress value)? getAllAddress,
    TResult? Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult? Function(_getCurrentLocation value)? getCurrentLocation,
    TResult? Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult? Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
  }) {
    return editSubmitButtonPressedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_getAllAddress value)? getAllAddress,
    TResult Function(_deleteButtonPressed value)? deleteButtonPressed,
    TResult Function(_getCurrentLocation value)? getCurrentLocation,
    TResult Function(_editButtonPressedEvent value)? editButtonPressedEvent,
    TResult Function(_editSubmitButtonPressedEvent value)?
        editSubmitButtonPressedEvent,
    required TResult orElse(),
  }) {
    if (editSubmitButtonPressedEvent != null) {
      return editSubmitButtonPressedEvent(this);
    }
    return orElse();
  }
}

abstract class _editSubmitButtonPressedEvent implements AddAddressEvent {
  const factory _editSubmitButtonPressedEvent(
      {required final String name,
      required final String contact,
      required final String pinCode,
      required final String flat,
      required final String area,
      required final String landmark,
      required final String addressId,
      required final String type}) = _$editSubmitButtonPressedEventImpl;

  String get name;
  String get contact;
  String get pinCode;
  String get flat;
  String get area;
  String get landmark;
  String get addressId;
  String get type;

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$editSubmitButtonPressedEventImplCopyWith<
          _$editSubmitButtonPressedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddAddressState {
  bool get isHome => throw _privateConstructorUsedError;
  bool get isWork => throw _privateConstructorUsedError;
  bool get isOthers => throw _privateConstructorUsedError;
  bool get isSubmiting => throw _privateConstructorUsedError;
  bool get isGettingAddress => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  AddressModel get addressess => throw _privateConstructorUsedError;
  Option<Either<FormFailure, Unit>> get isDataGot =>
      throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isLocationLoading => throw _privateConstructorUsedError;
  Option<Either<FormFailure, Unit>> get successOrfailure =>
      throw _privateConstructorUsedError;
  Option<Either<FormFailure, Unit>> get addAddressSuccessOrFailureResponse =>
      throw _privateConstructorUsedError;
  Option<Either<FormFailure, Unit>> get editAddressSuccessOrFailureResponse =>
      throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;
  String get locality => throw _privateConstructorUsedError;
  Option<Either<FormFailure, Unit>> get isEditDataGot =>
      throw _privateConstructorUsedError;
  String get landmark => throw _privateConstructorUsedError;
  bool get isNavigate => throw _privateConstructorUsedError;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAddressStateCopyWith<AddAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressStateCopyWith<$Res> {
  factory $AddAddressStateCopyWith(
          AddAddressState value, $Res Function(AddAddressState) then) =
      _$AddAddressStateCopyWithImpl<$Res, AddAddressState>;
  @useResult
  $Res call(
      {bool isHome,
      bool isWork,
      bool isOthers,
      bool isSubmiting,
      bool isGettingAddress,
      bool showErrorMessages,
      AddressModel addressess,
      Option<Either<FormFailure, Unit>> isDataGot,
      String type,
      bool isLocationLoading,
      Option<Either<FormFailure, Unit>> successOrfailure,
      Option<Either<FormFailure, Unit>> addAddressSuccessOrFailureResponse,
      Option<Either<FormFailure, Unit>> editAddressSuccessOrFailureResponse,
      String pinCode,
      String locality,
      Option<Either<FormFailure, Unit>> isEditDataGot,
      String landmark,
      bool isNavigate});
}

/// @nodoc
class _$AddAddressStateCopyWithImpl<$Res, $Val extends AddAddressState>
    implements $AddAddressStateCopyWith<$Res> {
  _$AddAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHome = null,
    Object? isWork = null,
    Object? isOthers = null,
    Object? isSubmiting = null,
    Object? isGettingAddress = null,
    Object? showErrorMessages = null,
    Object? addressess = null,
    Object? isDataGot = null,
    Object? type = null,
    Object? isLocationLoading = null,
    Object? successOrfailure = null,
    Object? addAddressSuccessOrFailureResponse = null,
    Object? editAddressSuccessOrFailureResponse = null,
    Object? pinCode = null,
    Object? locality = null,
    Object? isEditDataGot = null,
    Object? landmark = null,
    Object? isNavigate = null,
  }) {
    return _then(_value.copyWith(
      isHome: null == isHome
          ? _value.isHome
          : isHome // ignore: cast_nullable_to_non_nullable
              as bool,
      isWork: null == isWork
          ? _value.isWork
          : isWork // ignore: cast_nullable_to_non_nullable
              as bool,
      isOthers: null == isOthers
          ? _value.isOthers
          : isOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmiting: null == isSubmiting
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingAddress: null == isGettingAddress
          ? _value.isGettingAddress
          : isGettingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      addressess: null == addressess
          ? _value.addressess
          : addressess // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      isDataGot: null == isDataGot
          ? _value.isDataGot
          : isDataGot // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isLocationLoading: null == isLocationLoading
          ? _value.isLocationLoading
          : isLocationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      addAddressSuccessOrFailureResponse: null ==
              addAddressSuccessOrFailureResponse
          ? _value.addAddressSuccessOrFailureResponse
          : addAddressSuccessOrFailureResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      editAddressSuccessOrFailureResponse: null ==
              editAddressSuccessOrFailureResponse
          ? _value.editAddressSuccessOrFailureResponse
          : editAddressSuccessOrFailureResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      isEditDataGot: null == isEditDataGot
          ? _value.isEditDataGot
          : isEditDataGot // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      isNavigate: null == isNavigate
          ? _value.isNavigate
          : isNavigate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAddressStateImplCopyWith<$Res>
    implements $AddAddressStateCopyWith<$Res> {
  factory _$$AddAddressStateImplCopyWith(_$AddAddressStateImpl value,
          $Res Function(_$AddAddressStateImpl) then) =
      __$$AddAddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isHome,
      bool isWork,
      bool isOthers,
      bool isSubmiting,
      bool isGettingAddress,
      bool showErrorMessages,
      AddressModel addressess,
      Option<Either<FormFailure, Unit>> isDataGot,
      String type,
      bool isLocationLoading,
      Option<Either<FormFailure, Unit>> successOrfailure,
      Option<Either<FormFailure, Unit>> addAddressSuccessOrFailureResponse,
      Option<Either<FormFailure, Unit>> editAddressSuccessOrFailureResponse,
      String pinCode,
      String locality,
      Option<Either<FormFailure, Unit>> isEditDataGot,
      String landmark,
      bool isNavigate});
}

/// @nodoc
class __$$AddAddressStateImplCopyWithImpl<$Res>
    extends _$AddAddressStateCopyWithImpl<$Res, _$AddAddressStateImpl>
    implements _$$AddAddressStateImplCopyWith<$Res> {
  __$$AddAddressStateImplCopyWithImpl(
      _$AddAddressStateImpl _value, $Res Function(_$AddAddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHome = null,
    Object? isWork = null,
    Object? isOthers = null,
    Object? isSubmiting = null,
    Object? isGettingAddress = null,
    Object? showErrorMessages = null,
    Object? addressess = null,
    Object? isDataGot = null,
    Object? type = null,
    Object? isLocationLoading = null,
    Object? successOrfailure = null,
    Object? addAddressSuccessOrFailureResponse = null,
    Object? editAddressSuccessOrFailureResponse = null,
    Object? pinCode = null,
    Object? locality = null,
    Object? isEditDataGot = null,
    Object? landmark = null,
    Object? isNavigate = null,
  }) {
    return _then(_$AddAddressStateImpl(
      isHome: null == isHome
          ? _value.isHome
          : isHome // ignore: cast_nullable_to_non_nullable
              as bool,
      isWork: null == isWork
          ? _value.isWork
          : isWork // ignore: cast_nullable_to_non_nullable
              as bool,
      isOthers: null == isOthers
          ? _value.isOthers
          : isOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmiting: null == isSubmiting
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingAddress: null == isGettingAddress
          ? _value.isGettingAddress
          : isGettingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      addressess: null == addressess
          ? _value.addressess
          : addressess // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      isDataGot: null == isDataGot
          ? _value.isDataGot
          : isDataGot // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isLocationLoading: null == isLocationLoading
          ? _value.isLocationLoading
          : isLocationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      addAddressSuccessOrFailureResponse: null ==
              addAddressSuccessOrFailureResponse
          ? _value.addAddressSuccessOrFailureResponse
          : addAddressSuccessOrFailureResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      editAddressSuccessOrFailureResponse: null ==
              editAddressSuccessOrFailureResponse
          ? _value.editAddressSuccessOrFailureResponse
          : editAddressSuccessOrFailureResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      isEditDataGot: null == isEditDataGot
          ? _value.isEditDataGot
          : isEditDataGot // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String,
      isNavigate: null == isNavigate
          ? _value.isNavigate
          : isNavigate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddAddressStateImpl implements _AddAddressState {
  const _$AddAddressStateImpl(
      {required this.isHome,
      required this.isWork,
      required this.isOthers,
      required this.isSubmiting,
      required this.isGettingAddress,
      required this.showErrorMessages,
      required this.addressess,
      required this.isDataGot,
      required this.type,
      required this.isLocationLoading,
      required this.successOrfailure,
      required this.addAddressSuccessOrFailureResponse,
      required this.editAddressSuccessOrFailureResponse,
      required this.pinCode,
      required this.locality,
      required this.isEditDataGot,
      required this.landmark,
      required this.isNavigate});

  @override
  final bool isHome;
  @override
  final bool isWork;
  @override
  final bool isOthers;
  @override
  final bool isSubmiting;
  @override
  final bool isGettingAddress;
  @override
  final bool showErrorMessages;
  @override
  final AddressModel addressess;
  @override
  final Option<Either<FormFailure, Unit>> isDataGot;
  @override
  final String type;
  @override
  final bool isLocationLoading;
  @override
  final Option<Either<FormFailure, Unit>> successOrfailure;
  @override
  final Option<Either<FormFailure, Unit>> addAddressSuccessOrFailureResponse;
  @override
  final Option<Either<FormFailure, Unit>> editAddressSuccessOrFailureResponse;
  @override
  final String pinCode;
  @override
  final String locality;
  @override
  final Option<Either<FormFailure, Unit>> isEditDataGot;
  @override
  final String landmark;
  @override
  final bool isNavigate;

  @override
  String toString() {
    return 'AddAddressState(isHome: $isHome, isWork: $isWork, isOthers: $isOthers, isSubmiting: $isSubmiting, isGettingAddress: $isGettingAddress, showErrorMessages: $showErrorMessages, addressess: $addressess, isDataGot: $isDataGot, type: $type, isLocationLoading: $isLocationLoading, successOrfailure: $successOrfailure, addAddressSuccessOrFailureResponse: $addAddressSuccessOrFailureResponse, editAddressSuccessOrFailureResponse: $editAddressSuccessOrFailureResponse, pinCode: $pinCode, locality: $locality, isEditDataGot: $isEditDataGot, landmark: $landmark, isNavigate: $isNavigate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressStateImpl &&
            (identical(other.isHome, isHome) || other.isHome == isHome) &&
            (identical(other.isWork, isWork) || other.isWork == isWork) &&
            (identical(other.isOthers, isOthers) ||
                other.isOthers == isOthers) &&
            (identical(other.isSubmiting, isSubmiting) ||
                other.isSubmiting == isSubmiting) &&
            (identical(other.isGettingAddress, isGettingAddress) ||
                other.isGettingAddress == isGettingAddress) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.addressess, addressess) ||
                other.addressess == addressess) &&
            (identical(other.isDataGot, isDataGot) ||
                other.isDataGot == isDataGot) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isLocationLoading, isLocationLoading) ||
                other.isLocationLoading == isLocationLoading) &&
            (identical(other.successOrfailure, successOrfailure) ||
                other.successOrfailure == successOrfailure) &&
            (identical(other.addAddressSuccessOrFailureResponse,
                    addAddressSuccessOrFailureResponse) ||
                other.addAddressSuccessOrFailureResponse ==
                    addAddressSuccessOrFailureResponse) &&
            (identical(other.editAddressSuccessOrFailureResponse,
                    editAddressSuccessOrFailureResponse) ||
                other.editAddressSuccessOrFailureResponse ==
                    editAddressSuccessOrFailureResponse) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.isEditDataGot, isEditDataGot) ||
                other.isEditDataGot == isEditDataGot) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.isNavigate, isNavigate) ||
                other.isNavigate == isNavigate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isHome,
      isWork,
      isOthers,
      isSubmiting,
      isGettingAddress,
      showErrorMessages,
      addressess,
      isDataGot,
      type,
      isLocationLoading,
      successOrfailure,
      addAddressSuccessOrFailureResponse,
      editAddressSuccessOrFailureResponse,
      pinCode,
      locality,
      isEditDataGot,
      landmark,
      isNavigate);

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressStateImplCopyWith<_$AddAddressStateImpl> get copyWith =>
      __$$AddAddressStateImplCopyWithImpl<_$AddAddressStateImpl>(
          this, _$identity);
}

abstract class _AddAddressState implements AddAddressState {
  const factory _AddAddressState(
      {required final bool isHome,
      required final bool isWork,
      required final bool isOthers,
      required final bool isSubmiting,
      required final bool isGettingAddress,
      required final bool showErrorMessages,
      required final AddressModel addressess,
      required final Option<Either<FormFailure, Unit>> isDataGot,
      required final String type,
      required final bool isLocationLoading,
      required final Option<Either<FormFailure, Unit>> successOrfailure,
      required final Option<Either<FormFailure, Unit>>
          addAddressSuccessOrFailureResponse,
      required final Option<Either<FormFailure, Unit>>
          editAddressSuccessOrFailureResponse,
      required final String pinCode,
      required final String locality,
      required final Option<Either<FormFailure, Unit>> isEditDataGot,
      required final String landmark,
      required final bool isNavigate}) = _$AddAddressStateImpl;

  @override
  bool get isHome;
  @override
  bool get isWork;
  @override
  bool get isOthers;
  @override
  bool get isSubmiting;
  @override
  bool get isGettingAddress;
  @override
  bool get showErrorMessages;
  @override
  AddressModel get addressess;
  @override
  Option<Either<FormFailure, Unit>> get isDataGot;
  @override
  String get type;
  @override
  bool get isLocationLoading;
  @override
  Option<Either<FormFailure, Unit>> get successOrfailure;
  @override
  Option<Either<FormFailure, Unit>> get addAddressSuccessOrFailureResponse;
  @override
  Option<Either<FormFailure, Unit>> get editAddressSuccessOrFailureResponse;
  @override
  String get pinCode;
  @override
  String get locality;
  @override
  Option<Either<FormFailure, Unit>> get isEditDataGot;
  @override
  String get landmark;
  @override
  bool get isNavigate;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAddressStateImplCopyWith<_$AddAddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
