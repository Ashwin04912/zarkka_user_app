// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpVerificationEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String email) verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email)? verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email)? verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationEventCopyWith<OtpVerificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationEventCopyWith<$Res> {
  factory $OtpVerificationEventCopyWith(OtpVerificationEvent value,
          $Res Function(OtpVerificationEvent) then) =
      _$OtpVerificationEventCopyWithImpl<$Res, OtpVerificationEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$OtpVerificationEventCopyWithImpl<$Res,
        $Val extends OtpVerificationEvent>
    implements $OtpVerificationEventCopyWith<$Res> {
  _$OtpVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyButtonClickedImplCopyWith<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  factory _$$VerifyButtonClickedImplCopyWith(_$VerifyButtonClickedImpl value,
          $Res Function(_$VerifyButtonClickedImpl) then) =
      __$$VerifyButtonClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String email});
}

/// @nodoc
class __$$VerifyButtonClickedImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res, _$VerifyButtonClickedImpl>
    implements _$$VerifyButtonClickedImplCopyWith<$Res> {
  __$$VerifyButtonClickedImplCopyWithImpl(_$VerifyButtonClickedImpl _value,
      $Res Function(_$VerifyButtonClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? email = null,
  }) {
    return _then(_$VerifyButtonClickedImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyButtonClickedImpl implements _VerifyButtonClicked {
  const _$VerifyButtonClickedImpl({required this.otp, required this.email});

  @override
  final String otp;
  @override
  final String email;

  @override
  String toString() {
    return 'OtpVerificationEvent.verifyButtonClicked(otp: $otp, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyButtonClickedImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyButtonClickedImplCopyWith<_$VerifyButtonClickedImpl> get copyWith =>
      __$$VerifyButtonClickedImplCopyWithImpl<_$VerifyButtonClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String email) verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
  }) {
    return verifyButtonClicked(otp, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email)? verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
  }) {
    return verifyButtonClicked?.call(otp, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email)? verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    required TResult orElse(),
  }) {
    if (verifyButtonClicked != null) {
      return verifyButtonClicked(otp, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
  }) {
    return verifyButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
  }) {
    return verifyButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    required TResult orElse(),
  }) {
    if (verifyButtonClicked != null) {
      return verifyButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _VerifyButtonClicked implements OtpVerificationEvent {
  const factory _VerifyButtonClicked(
      {required final String otp,
      required final String email}) = _$VerifyButtonClickedImpl;

  String get otp;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$VerifyButtonClickedImplCopyWith<_$VerifyButtonClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$resendButtonClickedImplCopyWith<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  factory _$$resendButtonClickedImplCopyWith(_$resendButtonClickedImpl value,
          $Res Function(_$resendButtonClickedImpl) then) =
      __$$resendButtonClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$resendButtonClickedImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res, _$resendButtonClickedImpl>
    implements _$$resendButtonClickedImplCopyWith<$Res> {
  __$$resendButtonClickedImplCopyWithImpl(_$resendButtonClickedImpl _value,
      $Res Function(_$resendButtonClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$resendButtonClickedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$resendButtonClickedImpl implements _resendButtonClicked {
  const _$resendButtonClickedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'OtpVerificationEvent.resendButtonClicked(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$resendButtonClickedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$resendButtonClickedImplCopyWith<_$resendButtonClickedImpl> get copyWith =>
      __$$resendButtonClickedImplCopyWithImpl<_$resendButtonClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String email) verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
  }) {
    return resendButtonClicked(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email)? verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
  }) {
    return resendButtonClicked?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email)? verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    required TResult orElse(),
  }) {
    if (resendButtonClicked != null) {
      return resendButtonClicked(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
  }) {
    return resendButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
  }) {
    return resendButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    required TResult orElse(),
  }) {
    if (resendButtonClicked != null) {
      return resendButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _resendButtonClicked implements OtpVerificationEvent {
  const factory _resendButtonClicked({required final String email}) =
      _$resendButtonClickedImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$resendButtonClickedImplCopyWith<_$resendButtonClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpVerificationState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isResendOtp => throw _privateConstructorUsedError;
  bool get isSubmit => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get successOrfailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStateCopyWith<$Res> {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value,
          $Res Function(OtpVerificationState) then) =
      _$OtpVerificationStateCopyWithImpl<$Res, OtpVerificationState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool isResendOtp,
      bool isSubmit,
      Option<Either<AuthFailure, Unit>> successOrfailure});
}

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res,
        $Val extends OtpVerificationState>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isResendOtp = null,
    Object? isSubmit = null,
    Object? successOrfailure = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendOtp: null == isResendOtp
          ? _value.isResendOtp
          : isResendOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmit: null == isSubmit
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpVerificationStateImplCopyWith<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  factory _$$OtpVerificationStateImplCopyWith(_$OtpVerificationStateImpl value,
          $Res Function(_$OtpVerificationStateImpl) then) =
      __$$OtpVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool isResendOtp,
      bool isSubmit,
      Option<Either<AuthFailure, Unit>> successOrfailure});
}

/// @nodoc
class __$$OtpVerificationStateImplCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res, _$OtpVerificationStateImpl>
    implements _$$OtpVerificationStateImplCopyWith<$Res> {
  __$$OtpVerificationStateImplCopyWithImpl(_$OtpVerificationStateImpl _value,
      $Res Function(_$OtpVerificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isResendOtp = null,
    Object? isSubmit = null,
    Object? successOrfailure = null,
  }) {
    return _then(_$OtpVerificationStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendOtp: null == isResendOtp
          ? _value.isResendOtp
          : isResendOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmit: null == isSubmit
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$OtpVerificationStateImpl implements _OtpVerificationState {
  const _$OtpVerificationStateImpl(
      {required this.isSubmitting,
      required this.isResendOtp,
      required this.isSubmit,
      required this.successOrfailure});

  @override
  final bool isSubmitting;
  @override
  final bool isResendOtp;
  @override
  final bool isSubmit;
  @override
  final Option<Either<AuthFailure, Unit>> successOrfailure;

  @override
  String toString() {
    return 'OtpVerificationState(isSubmitting: $isSubmitting, isResendOtp: $isResendOtp, isSubmit: $isSubmit, successOrfailure: $successOrfailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isResendOtp, isResendOtp) ||
                other.isResendOtp == isResendOtp) &&
            (identical(other.isSubmit, isSubmit) ||
                other.isSubmit == isSubmit) &&
            (identical(other.successOrfailure, successOrfailure) ||
                other.successOrfailure == successOrfailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSubmitting, isResendOtp, isSubmit, successOrfailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith =>
          __$$OtpVerificationStateImplCopyWithImpl<_$OtpVerificationStateImpl>(
              this, _$identity);
}

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState(
          {required final bool isSubmitting,
          required final bool isResendOtp,
          required final bool isSubmit,
          required final Option<Either<AuthFailure, Unit>> successOrfailure}) =
      _$OtpVerificationStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get isResendOtp;
  @override
  bool get isSubmit;
  @override
  Option<Either<AuthFailure, Unit>> get successOrfailure;
  @override
  @JsonKey(ignore: true)
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
