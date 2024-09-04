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
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String token,
            String type)
        submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String token, String type)?
        submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String token, String type)?
        submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomePressed value) homePressed,
    required TResult Function(_WorkPressed value) workPressed,
    required TResult Function(_OthersPressed value) othersPressed,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomePressed value)? homePressed,
    TResult? Function(_WorkPressed value)? workPressed,
    TResult? Function(_OthersPressed value)? othersPressed,
    TResult? Function(_SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomePressed value)? homePressed,
    TResult Function(_WorkPressed value)? workPressed,
    TResult Function(_OthersPressed value)? othersPressed,
    TResult Function(_SubmitPressed value)? submitPressed,
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
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String token,
            String type)
        submitPressed,
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
            String area, String landmark, String token, String type)?
        submitPressed,
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
            String area, String landmark, String token, String type)?
        submitPressed,
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
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String token,
            String type)
        submitPressed,
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
            String area, String landmark, String token, String type)?
        submitPressed,
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
            String area, String landmark, String token, String type)?
        submitPressed,
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
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String token,
            String type)
        submitPressed,
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
            String area, String landmark, String token, String type)?
        submitPressed,
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
            String area, String landmark, String token, String type)?
        submitPressed,
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
      String token,
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
    Object? token = null,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
      required this.token,
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
  final String token;
  @override
  final String type;

  @override
  String toString() {
    return 'AddAddressEvent.submitPressed(name: $name, contact: $contact, pinCode: $pinCode, flat: $flat, area: $area, landmark: $landmark, token: $token, type: $type)';
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
            (identical(other.token, token) || other.token == token) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, contact, pinCode, flat, area, landmark, token, type);

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
    required TResult Function(
            String name,
            String contact,
            String pinCode,
            String flat,
            String area,
            String landmark,
            String token,
            String type)
        submitPressed,
  }) {
    return submitPressed(
        name, contact, pinCode, flat, area, landmark, token, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homePressed,
    TResult? Function()? workPressed,
    TResult? Function()? othersPressed,
    TResult? Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String token, String type)?
        submitPressed,
  }) {
    return submitPressed?.call(
        name, contact, pinCode, flat, area, landmark, token, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homePressed,
    TResult Function()? workPressed,
    TResult Function()? othersPressed,
    TResult Function(String name, String contact, String pinCode, String flat,
            String area, String landmark, String token, String type)?
        submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(
          name, contact, pinCode, flat, area, landmark, token, type);
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
      required final String token,
      required final String type}) = _$SubmitPressedImpl;

  String get name;
  String get contact;
  String get pinCode;
  String get flat;
  String get area;
  String get landmark;
  String get token;
  String get type;

  /// Create a copy of AddAddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitPressedImplCopyWith<_$SubmitPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddAddressState {
  bool get isHome => throw _privateConstructorUsedError;
  bool get isWork => throw _privateConstructorUsedError;
  bool get isOthers => throw _privateConstructorUsedError;
  bool get isSubmiting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<FormFailure, Unit>> get successOrfailure =>
      throw _privateConstructorUsedError;

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
      bool showErrorMessages,
      Option<Either<FormFailure, Unit>> successOrfailure});
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
    Object? showErrorMessages = null,
    Object? successOrfailure = null,
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
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
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
      bool showErrorMessages,
      Option<Either<FormFailure, Unit>> successOrfailure});
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
    Object? showErrorMessages = null,
    Object? successOrfailure = null,
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
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, Unit>>,
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
      required this.showErrorMessages,
      required this.successOrfailure});

  @override
  final bool isHome;
  @override
  final bool isWork;
  @override
  final bool isOthers;
  @override
  final bool isSubmiting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<FormFailure, Unit>> successOrfailure;

  @override
  String toString() {
    return 'AddAddressState(isHome: $isHome, isWork: $isWork, isOthers: $isOthers, isSubmiting: $isSubmiting, showErrorMessages: $showErrorMessages, successOrfailure: $successOrfailure)';
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
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.successOrfailure, successOrfailure) ||
                other.successOrfailure == successOrfailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isHome, isWork, isOthers,
      isSubmiting, showErrorMessages, successOrfailure);

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
          required final bool showErrorMessages,
          required final Option<Either<FormFailure, Unit>> successOrfailure}) =
      _$AddAddressStateImpl;

  @override
  bool get isHome;
  @override
  bool get isWork;
  @override
  bool get isOthers;
  @override
  bool get isSubmiting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<FormFailure, Unit>> get successOrfailure;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAddressStateImplCopyWith<_$AddAddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
