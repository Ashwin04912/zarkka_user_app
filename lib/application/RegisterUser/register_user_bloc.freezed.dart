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
  RegisterUserModel get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUserEventCopyWith<RegisterUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserEventCopyWith<$Res> {
  factory $RegisterUserEventCopyWith(
          RegisterUserEvent value, $Res Function(RegisterUserEvent) then) =
      _$RegisterUserEventCopyWithImpl<$Res, RegisterUserEvent>;
  @useResult
  $Res call({RegisterUserModel user});
}

/// @nodoc
class _$RegisterUserEventCopyWithImpl<$Res, $Val extends RegisterUserEvent>
    implements $RegisterUserEventCopyWith<$Res> {
  _$RegisterUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RegisterUserModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpButtonPressedImplCopyWith<$Res>
    implements $RegisterUserEventCopyWith<$Res> {
  factory _$$SignUpButtonPressedImplCopyWith(_$SignUpButtonPressedImpl value,
          $Res Function(_$SignUpButtonPressedImpl) then) =
      __$$SignUpButtonPressedImplCopyWithImpl<$Res>;
  @override
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpButtonPressedImplCopyWith<_$SignUpButtonPressedImpl> get copyWith =>
      __$$SignUpButtonPressedImplCopyWithImpl<_$SignUpButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
  }) {
    return signUpButtonPressed(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
  }) {
    return signUpButtonPressed?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
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
  }) {
    return signUpButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return signUpButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
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

  @override
  RegisterUserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$SignUpButtonPressedImplCopyWith<_$SignUpButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

  @JsonKey(ignore: true)
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
      Option<Either<AuthFailure, Unit>> successOrfailure});
}

/// @nodoc
class _$RegisterUserStateCopyWithImpl<$Res, $Val extends RegisterUserState>
    implements $RegisterUserStateCopyWith<$Res> {
  _$RegisterUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
      Option<Either<AuthFailure, Unit>> successOrfailure});
}

/// @nodoc
class __$$RegisterUserStateImplCopyWithImpl<$Res>
    extends _$RegisterUserStateCopyWithImpl<$Res, _$RegisterUserStateImpl>
    implements _$$RegisterUserStateImplCopyWith<$Res> {
  __$$RegisterUserStateImplCopyWithImpl(_$RegisterUserStateImpl _value,
      $Res Function(_$RegisterUserStateImpl) _then)
      : super(_value, _then);

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
      required this.successOrfailure});

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
  String toString() {
    return 'RegisterUserState(userName: $userName, email: $email, password: $password, cpassword: $cpassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, successOrfailure: $successOrfailure)';
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
                other.successOrfailure == successOrfailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email, password,
      cpassword, showErrorMessages, isSubmitting, successOrfailure);

  @JsonKey(ignore: true)
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
          required final Option<Either<AuthFailure, Unit>> successOrfailure}) =
      _$RegisterUserStateImpl;

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
  @JsonKey(ignore: true)
  _$$RegisterUserStateImplCopyWith<_$RegisterUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
