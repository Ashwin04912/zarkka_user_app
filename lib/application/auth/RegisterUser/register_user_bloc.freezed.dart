// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
    required TResult Function() eyePassButtonPressed,
    required TResult Function() eyeCPassButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserEventCopyWith<$Res> {
  factory $RegisterUserEventCopyWith(
          RegisterUserEvent value, $Res Function(RegisterUserEvent) then) =
      _$RegisterUserEventCopyWithImpl<$Res, RegisterUserEvent>;
}

/// @nodoc
class _$RegisterUserEventCopyWithImpl<$Res, $Val extends RegisterUserEvent>
    implements $RegisterUserEventCopyWith<$Res> {
  _$RegisterUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpButtonPressedImplCopyWith<$Res> {
  factory _$$SignUpButtonPressedImplCopyWith(_$SignUpButtonPressedImpl value,
          $Res Function(_$SignUpButtonPressedImpl) then) =
      __$$SignUpButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterUserModel user});
}

/// @nodoc
class __$$SignUpButtonPressedImplCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res, _$SignUpButtonPressedImpl>
    implements _$$SignUpButtonPressedImplCopyWith<$Res> {
  __$$SignUpButtonPressedImplCopyWithImpl(_$SignUpButtonPressedImpl _value,
      $Res Function(_$SignUpButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignUpButtonPressedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RegisterUserModel,
    ));
  }
}

/// @nodoc

class _$SignUpButtonPressedImpl implements _SignUpButtonPressed {
  const _$SignUpButtonPressedImpl({required this.user});

  @override
  final RegisterUserModel user;

  @override
  String toString() {
    return 'RegisterUserEvent.signUpButtonPressed(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpButtonPressedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpButtonPressedImplCopyWith<_$SignUpButtonPressedImpl> get copyWith =>
      __$$SignUpButtonPressedImplCopyWithImpl<_$SignUpButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
    required TResult Function() eyePassButtonPressed,
    required TResult Function() eyeCPassButtonPressed,
  }) {
    return signUpButtonPressed(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  }) {
    return signUpButtonPressed?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  }) {
    if (signUpButtonPressed != null) {
      return signUpButtonPressed(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  }) {
    return signUpButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  }) {
    return signUpButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  }) {
    if (signUpButtonPressed != null) {
      return signUpButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpButtonPressed implements RegisterUserEvent {
  const factory _SignUpButtonPressed({required final RegisterUserModel user}) =
      _$SignUpButtonPressedImpl;

  RegisterUserModel get user;

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpButtonPressedImplCopyWith<_$SignUpButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$eyeButtonPressedImplCopyWith<$Res> {
  factory _$$eyeButtonPressedImplCopyWith(_$eyeButtonPressedImpl value,
          $Res Function(_$eyeButtonPressedImpl) then) =
      __$$eyeButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$eyeButtonPressedImplCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res, _$eyeButtonPressedImpl>
    implements _$$eyeButtonPressedImplCopyWith<$Res> {
  __$$eyeButtonPressedImplCopyWithImpl(_$eyeButtonPressedImpl _value,
      $Res Function(_$eyeButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$eyeButtonPressedImpl implements _eyeButtonPressed {
  const _$eyeButtonPressedImpl();

  @override
  String toString() {
    return 'RegisterUserEvent.eyePassButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$eyeButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
    required TResult Function() eyePassButtonPressed,
    required TResult Function() eyeCPassButtonPressed,
  }) {
    return eyePassButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  }) {
    return eyePassButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  }) {
    if (eyePassButtonPressed != null) {
      return eyePassButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  }) {
    return eyePassButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  }) {
    return eyePassButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  }) {
    if (eyePassButtonPressed != null) {
      return eyePassButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _eyeButtonPressed implements RegisterUserEvent {
  const factory _eyeButtonPressed() = _$eyeButtonPressedImpl;
}

/// @nodoc
abstract class _$$eyeCPassButtonPressedImplCopyWith<$Res> {
  factory _$$eyeCPassButtonPressedImplCopyWith(
          _$eyeCPassButtonPressedImpl value,
          $Res Function(_$eyeCPassButtonPressedImpl) then) =
      __$$eyeCPassButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$eyeCPassButtonPressedImplCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res, _$eyeCPassButtonPressedImpl>
    implements _$$eyeCPassButtonPressedImplCopyWith<$Res> {
  __$$eyeCPassButtonPressedImplCopyWithImpl(_$eyeCPassButtonPressedImpl _value,
      $Res Function(_$eyeCPassButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$eyeCPassButtonPressedImpl implements _eyeCPassButtonPressed {
  const _$eyeCPassButtonPressedImpl();

  @override
  String toString() {
    return 'RegisterUserEvent.eyeCPassButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$eyeCPassButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
    required TResult Function() eyePassButtonPressed,
    required TResult Function() eyeCPassButtonPressed,
  }) {
    return eyeCPassButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  }) {
    return eyeCPassButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  }) {
    if (eyeCPassButtonPressed != null) {
      return eyeCPassButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  }) {
    return eyeCPassButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  }) {
    return eyeCPassButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  }) {
    if (eyeCPassButtonPressed != null) {
      return eyeCPassButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _eyeCPassButtonPressed implements RegisterUserEvent {
  const factory _eyeCPassButtonPressed() = _$eyeCPassButtonPressedImpl;
}

/// @nodoc
mixin _$RegisterUserState {
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get cpassword => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get successOrfailure =>
      throw _privateConstructorUsedError;
  bool get isPassEyePressed => throw _privateConstructorUsedError;
  bool get isCpassEyePressed => throw _privateConstructorUsedError;

  /// Create a copy of RegisterUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterUserStateCopyWith<RegisterUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserStateCopyWith<$Res> {
  factory $RegisterUserStateCopyWith(
          RegisterUserState value, $Res Function(RegisterUserState) then) =
      _$RegisterUserStateCopyWithImpl<$Res, RegisterUserState>;
  @useResult
  $Res call(
      {String userName,
      String email,
      String password,
      String cpassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> successOrfailure,
      bool isPassEyePressed,
      bool isCpassEyePressed});
}

/// @nodoc
class _$RegisterUserStateCopyWithImpl<$Res, $Val extends RegisterUserState>
    implements $RegisterUserStateCopyWith<$Res> {
  _$RegisterUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
    Object? cpassword = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? successOrfailure = null,
    Object? isPassEyePressed = null,
    Object? isCpassEyePressed = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      cpassword: null == cpassword
          ? _value.cpassword
          : cpassword // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isPassEyePressed: null == isPassEyePressed
          ? _value.isPassEyePressed
          : isPassEyePressed // ignore: cast_nullable_to_non_nullable
              as bool,
      isCpassEyePressed: null == isCpassEyePressed
          ? _value.isCpassEyePressed
          : isCpassEyePressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserStateImplCopyWith<$Res>
    implements $RegisterUserStateCopyWith<$Res> {
  factory _$$RegisterUserStateImplCopyWith(_$RegisterUserStateImpl value,
          $Res Function(_$RegisterUserStateImpl) then) =
      __$$RegisterUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String email,
      String password,
      String cpassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> successOrfailure,
      bool isPassEyePressed,
      bool isCpassEyePressed});
}

/// @nodoc
class __$$RegisterUserStateImplCopyWithImpl<$Res>
    extends _$RegisterUserStateCopyWithImpl<$Res, _$RegisterUserStateImpl>
    implements _$$RegisterUserStateImplCopyWith<$Res> {
  __$$RegisterUserStateImplCopyWithImpl(_$RegisterUserStateImpl _value,
      $Res Function(_$RegisterUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
    Object? cpassword = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? successOrfailure = null,
    Object? isPassEyePressed = null,
    Object? isCpassEyePressed = null,
  }) {
    return _then(_$RegisterUserStateImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      cpassword: null == cpassword
          ? _value.cpassword
          : cpassword // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isPassEyePressed: null == isPassEyePressed
          ? _value.isPassEyePressed
          : isPassEyePressed // ignore: cast_nullable_to_non_nullable
              as bool,
      isCpassEyePressed: null == isCpassEyePressed
          ? _value.isCpassEyePressed
          : isCpassEyePressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterUserStateImpl implements _RegisterUserState {
  const _$RegisterUserStateImpl(
      {required this.userName,
      required this.email,
      required this.password,
      required this.cpassword,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.successOrfailure,
      required this.isPassEyePressed,
      required this.isCpassEyePressed});

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String cpassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> successOrfailure;
  @override
  final bool isPassEyePressed;
  @override
  final bool isCpassEyePressed;

  @override
  String toString() {
    return 'RegisterUserState(userName: $userName, email: $email, password: $password, cpassword: $cpassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, successOrfailure: $successOrfailure, isPassEyePressed: $isPassEyePressed, isCpassEyePressed: $isCpassEyePressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.cpassword, cpassword) ||
                other.cpassword == cpassword) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.successOrfailure, successOrfailure) ||
                other.successOrfailure == successOrfailure) &&
            (identical(other.isPassEyePressed, isPassEyePressed) ||
                other.isPassEyePressed == isPassEyePressed) &&
            (identical(other.isCpassEyePressed, isCpassEyePressed) ||
                other.isCpassEyePressed == isCpassEyePressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      email,
      password,
      cpassword,
      showErrorMessages,
      isSubmitting,
      successOrfailure,
      isPassEyePressed,
      isCpassEyePressed);

  /// Create a copy of RegisterUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserStateImplCopyWith<_$RegisterUserStateImpl> get copyWith =>
      __$$RegisterUserStateImplCopyWithImpl<_$RegisterUserStateImpl>(
          this, _$identity);
}

abstract class _RegisterUserState implements RegisterUserState {
  const factory _RegisterUserState(
      {required final String userName,
      required final String email,
      required final String password,
      required final String cpassword,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>> successOrfailure,
      required final bool isPassEyePressed,
      required final bool isCpassEyePressed}) = _$RegisterUserStateImpl;

  @override
  String get userName;
  @override
  String get email;
  @override
  String get password;
  @override
  String get cpassword;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get successOrfailure;
  @override
  bool get isPassEyePressed;
  @override
  bool get isCpassEyePressed;

  /// Create a copy of RegisterUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserStateImplCopyWith<_$RegisterUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
