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
    required TResult Function(String otp, String email, bool isForget)
        verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
    required TResult Function(String otp, String email)
        otpVerificationForResetEvent,
    required TResult Function(
            String email, String password, String cPassword, String resetToken)
        resetPasswordPressedEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
    TResult? Function(String otp, String email)? otpVerificationForResetEvent,
    TResult? Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    TResult Function(String otp, String email)? otpVerificationForResetEvent,
    TResult Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
    required TResult Function(_otpVerificationForResetEvent value)
        otpVerificationForResetEvent,
    required TResult Function(_resetPasswordPressedEvent value)
        resetPasswordPressedEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
    TResult? Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult? Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    TResult Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpVerificationEventCopyWith<OtpVerificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class $OtpVerificationEventCopyWith<$Res> {
  factory $OtpVerificationEventCopyWith(OtpVerificationEvent value,
          $Res Function(OtpVerificationEvent) then) =
      _$OtpVerificationEventCopyWithImpl<$Res, OtpVerificationEvent>;
  @useResult
  $Res call({String emailashwin);
ashwin

/// @nodoc
class _$OtpVerificationEventCopyWithImpl<$Res,
        $Val extends OtpVerificationEvent>
    implements $OtpVerificationEventCopyWith<$Res> {
  _$OtpVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  ashwin) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  ashwin
ashwin

/// @nodoc
abstract class _$$VerifyButtonClickedImplCopyWith<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  factory _$$VerifyButtonClickedImplCopyWith(_$VerifyButtonClickedImpl value,
          $Res Function(_$VerifyButtonClickedImpl) then) =
      __$$VerifyButtonClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String email, bool isForgetashwin);
ashwin

/// @nodoc
class __$$VerifyButtonClickedImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res, _$VerifyButtonClickedImpl>
    implements _$$VerifyButtonClickedImplCopyWith<$Res> {
  __$$VerifyButtonClickedImplCopyWithImpl(_$VerifyButtonClickedImpl _value,
      $Res Function(_$VerifyButtonClickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? email = null,
    Object? isForget = null,
  ashwin) {
    return _then(_$VerifyButtonClickedImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isForget: null == isForget
          ? _value.isForget
          : isForget // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  ashwin
ashwin

/// @nodoc

class _$VerifyButtonClickedImpl implements _VerifyButtonClicked {
  const _$VerifyButtonClickedImpl(
      {required this.otp, required this.email, required this.isForgetashwin);

  @override
  final String otp;
  @override
  final String email;
  @override
  final bool isForget;

  @override
  String toString() {
    return 'OtpVerificationEvent.verifyButtonClicked(otp: $otp, email: $email, isForget: $isForget)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyButtonClickedImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isForget, isForget) ||
                other.isForget == isForget));
  ashwin

  @override
  int get hashCode => Object.hash(runtimeType, otp, email, isForget);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyButtonClickedImplCopyWith<_$VerifyButtonClickedImpl> get copyWith =>
      __$$VerifyButtonClickedImplCopyWithImpl<_$VerifyButtonClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String email, bool isForget)
        verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
    required TResult Function(String otp, String email)
        otpVerificationForResetEvent,
    required TResult Function(
            String email, String password, String cPassword, String resetToken)
        resetPasswordPressedEvent,
  ashwin) {
    return verifyButtonClicked(otp, email, isForget);
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
    TResult? Function(String otp, String email)? otpVerificationForResetEvent,
    TResult? Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
  ashwin) {
    return verifyButtonClicked?.call(otp, email, isForget);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    TResult Function(String otp, String email)? otpVerificationForResetEvent,
    TResult Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (verifyButtonClicked != null) {
      return verifyButtonClicked(otp, email, isForget);
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
    required TResult Function(_otpVerificationForResetEvent value)
        otpVerificationForResetEvent,
    required TResult Function(_resetPasswordPressedEvent value)
        resetPasswordPressedEvent,
  ashwin) {
    return verifyButtonClicked(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
    TResult? Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult? Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
  ashwin) {
    return verifyButtonClicked?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    TResult Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (verifyButtonClicked != null) {
      return verifyButtonClicked(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _VerifyButtonClicked implements OtpVerificationEvent {
  const factory _VerifyButtonClicked(
      {required final String otp,
      required final String email,
      required final bool isForgetashwin) = _$VerifyButtonClickedImpl;

  String get otp;
  @override
  String get email;
  bool get isForget;

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyButtonClickedImplCopyWith<_$VerifyButtonClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class _$$resendButtonClickedImplCopyWith<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  factory _$$resendButtonClickedImplCopyWith(_$resendButtonClickedImpl value,
          $Res Function(_$resendButtonClickedImpl) then) =
      __$$resendButtonClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emailashwin);
ashwin

/// @nodoc
class __$$resendButtonClickedImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res, _$resendButtonClickedImpl>
    implements _$$resendButtonClickedImplCopyWith<$Res> {
  __$$resendButtonClickedImplCopyWithImpl(_$resendButtonClickedImpl _value,
      $Res Function(_$resendButtonClickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  ashwin) {
    return _then(_$resendButtonClickedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  ashwin
ashwin

/// @nodoc

class _$resendButtonClickedImpl implements _resendButtonClicked {
  const _$resendButtonClickedImpl({required this.emailashwin);

  @override
  final String email;

  @override
  String toString() {
    return 'OtpVerificationEvent.resendButtonClicked(email: $email)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$resendButtonClickedImpl &&
            (identical(other.email, email) || other.email == email));
  ashwin

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$resendButtonClickedImplCopyWith<_$resendButtonClickedImpl> get copyWith =>
      __$$resendButtonClickedImplCopyWithImpl<_$resendButtonClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String email, bool isForget)
        verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
    required TResult Function(String otp, String email)
        otpVerificationForResetEvent,
    required TResult Function(
            String email, String password, String cPassword, String resetToken)
        resetPasswordPressedEvent,
  ashwin) {
    return resendButtonClicked(email);
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
    TResult? Function(String otp, String email)? otpVerificationForResetEvent,
    TResult? Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
  ashwin) {
    return resendButtonClicked?.call(email);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    TResult Function(String otp, String email)? otpVerificationForResetEvent,
    TResult Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (resendButtonClicked != null) {
      return resendButtonClicked(email);
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
    required TResult Function(_otpVerificationForResetEvent value)
        otpVerificationForResetEvent,
    required TResult Function(_resetPasswordPressedEvent value)
        resetPasswordPressedEvent,
  ashwin) {
    return resendButtonClicked(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
    TResult? Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult? Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
  ashwin) {
    return resendButtonClicked?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    TResult Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (resendButtonClicked != null) {
      return resendButtonClicked(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _resendButtonClicked implements OtpVerificationEvent {
  const factory _resendButtonClicked({required final String emailashwin) =
      _$resendButtonClickedImpl;

  @override
  String get email;

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$resendButtonClickedImplCopyWith<_$resendButtonClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class _$$otpVerificationForResetEventImplCopyWith<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  factory _$$otpVerificationForResetEventImplCopyWith(
          _$otpVerificationForResetEventImpl value,
          $Res Function(_$otpVerificationForResetEventImpl) then) =
      __$$otpVerificationForResetEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String emailashwin);
ashwin

/// @nodoc
class __$$otpVerificationForResetEventImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res,
        _$otpVerificationForResetEventImpl>
    implements _$$otpVerificationForResetEventImplCopyWith<$Res> {
  __$$otpVerificationForResetEventImplCopyWithImpl(
      _$otpVerificationForResetEventImpl _value,
      $Res Function(_$otpVerificationForResetEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? email = null,
  ashwin) {
    return _then(_$otpVerificationForResetEventImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  ashwin
ashwin

/// @nodoc

class _$otpVerificationForResetEventImpl
    implements _otpVerificationForResetEvent {
  const _$otpVerificationForResetEventImpl(
      {required this.otp, required this.emailashwin);

  @override
  final String otp;
  @override
  final String email;

  @override
  String toString() {
    return 'OtpVerificationEvent.otpVerificationForResetEvent(otp: $otp, email: $email)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$otpVerificationForResetEventImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.email, email) || other.email == email));
  ashwin

  @override
  int get hashCode => Object.hash(runtimeType, otp, email);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$otpVerificationForResetEventImplCopyWith<
          _$otpVerificationForResetEventImpl>
      get copyWith => __$$otpVerificationForResetEventImplCopyWithImpl<
          _$otpVerificationForResetEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String email, bool isForget)
        verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
    required TResult Function(String otp, String email)
        otpVerificationForResetEvent,
    required TResult Function(
            String email, String password, String cPassword, String resetToken)
        resetPasswordPressedEvent,
  ashwin) {
    return otpVerificationForResetEvent(otp, email);
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
    TResult? Function(String otp, String email)? otpVerificationForResetEvent,
    TResult? Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
  ashwin) {
    return otpVerificationForResetEvent?.call(otp, email);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    TResult Function(String otp, String email)? otpVerificationForResetEvent,
    TResult Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (otpVerificationForResetEvent != null) {
      return otpVerificationForResetEvent(otp, email);
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
    required TResult Function(_otpVerificationForResetEvent value)
        otpVerificationForResetEvent,
    required TResult Function(_resetPasswordPressedEvent value)
        resetPasswordPressedEvent,
  ashwin) {
    return otpVerificationForResetEvent(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
    TResult? Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult? Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
  ashwin) {
    return otpVerificationForResetEvent?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    TResult Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (otpVerificationForResetEvent != null) {
      return otpVerificationForResetEvent(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _otpVerificationForResetEvent implements OtpVerificationEvent {
  const factory _otpVerificationForResetEvent(
      {required final String otp,
      required final String emailashwin) = _$otpVerificationForResetEventImpl;

  String get otp;
  @override
  String get email;

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$otpVerificationForResetEventImplCopyWith<
          _$otpVerificationForResetEventImpl>
      get copyWith => throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class _$$resetPasswordPressedEventImplCopyWith<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  factory _$$resetPasswordPressedEventImplCopyWith(
          _$resetPasswordPressedEventImpl value,
          $Res Function(_$resetPasswordPressedEventImpl) then) =
      __$$resetPasswordPressedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email, String password, String cPassword, String resetTokenashwin);
ashwin

/// @nodoc
class __$$resetPasswordPressedEventImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res,
        _$resetPasswordPressedEventImpl>
    implements _$$resetPasswordPressedEventImplCopyWith<$Res> {
  __$$resetPasswordPressedEventImplCopyWithImpl(
      _$resetPasswordPressedEventImpl _value,
      $Res Function(_$resetPasswordPressedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? cPassword = null,
    Object? resetToken = null,
  ashwin) {
    return _then(_$resetPasswordPressedEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      cPassword: null == cPassword
          ? _value.cPassword
          : cPassword // ignore: cast_nullable_to_non_nullable
              as String,
      resetToken: null == resetToken
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  ashwin
ashwin

/// @nodoc

class _$resetPasswordPressedEventImpl implements _resetPasswordPressedEvent {
  const _$resetPasswordPressedEventImpl(
      {required this.email,
      required this.password,
      required this.cPassword,
      required this.resetTokenashwin);

  @override
  final String email;
  @override
  final String password;
  @override
  final String cPassword;
  @override
  final String resetToken;

  @override
  String toString() {
    return 'OtpVerificationEvent.resetPasswordPressedEvent(email: $email, password: $password, cPassword: $cPassword, resetToken: $resetToken)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$resetPasswordPressedEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.cPassword, cPassword) ||
                other.cPassword == cPassword) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken));
  ashwin

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, cPassword, resetToken);

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$resetPasswordPressedEventImplCopyWith<_$resetPasswordPressedEventImpl>
      get copyWith => __$$resetPasswordPressedEventImplCopyWithImpl<
          _$resetPasswordPressedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String email, bool isForget)
        verifyButtonClicked,
    required TResult Function(String email) resendButtonClicked,
    required TResult Function(String otp, String email)
        otpVerificationForResetEvent,
    required TResult Function(
            String email, String password, String cPassword, String resetToken)
        resetPasswordPressedEvent,
  ashwin) {
    return resetPasswordPressedEvent(email, password, cPassword, resetToken);
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult? Function(String email)? resendButtonClicked,
    TResult? Function(String otp, String email)? otpVerificationForResetEvent,
    TResult? Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
  ashwin) {
    return resetPasswordPressedEvent?.call(
        email, password, cPassword, resetToken);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String email, bool isForget)?
        verifyButtonClicked,
    TResult Function(String email)? resendButtonClicked,
    TResult Function(String otp, String email)? otpVerificationForResetEvent,
    TResult Function(
            String email, String password, String cPassword, String resetToken)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (resetPasswordPressedEvent != null) {
      return resetPasswordPressedEvent(email, password, cPassword, resetToken);
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonClicked value) verifyButtonClicked,
    required TResult Function(_resendButtonClicked value) resendButtonClicked,
    required TResult Function(_otpVerificationForResetEvent value)
        otpVerificationForResetEvent,
    required TResult Function(_resetPasswordPressedEvent value)
        resetPasswordPressedEvent,
  ashwin) {
    return resetPasswordPressedEvent(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult? Function(_resendButtonClicked value)? resendButtonClicked,
    TResult? Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult? Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
  ashwin) {
    return resetPasswordPressedEvent?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonClicked value)? verifyButtonClicked,
    TResult Function(_resendButtonClicked value)? resendButtonClicked,
    TResult Function(_otpVerificationForResetEvent value)?
        otpVerificationForResetEvent,
    TResult Function(_resetPasswordPressedEvent value)?
        resetPasswordPressedEvent,
    required TResult orElse(),
  ashwin) {
    if (resetPasswordPressedEvent != null) {
      return resetPasswordPressedEvent(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _resetPasswordPressedEvent implements OtpVerificationEvent {
  const factory _resetPasswordPressedEvent(
      {required final String email,
      required final String password,
      required final String cPassword,
      required final String resetTokenashwin) = _$resetPasswordPressedEventImpl;

  @override
  String get email;
  String get password;
  String get cPassword;
  String get resetToken;

  /// Create a copy of OtpVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$resetPasswordPressedEventImplCopyWith<_$resetPasswordPressedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
ashwin

/// @nodoc
mixin _$OtpVerificationState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isResendOtp => throw _privateConstructorUsedError;
  bool get isSubmit => throw _privateConstructorUsedError;
  String get resetPassToken => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get successOrfailure =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get newPasswordCreateSuccessOrFailure =>
      throw _privateConstructorUsedError;

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
ashwin

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
      String resetPassToken,
      Option<Either<AuthFailure, Unit>> successOrfailure,
      Option<Either<AuthFailure, Unit>> newPasswordCreateSuccessOrFailureashwin);
ashwin

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res,
        $Val extends OtpVerificationState>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isResendOtp = null,
    Object? isSubmit = null,
    Object? resetPassToken = null,
    Object? successOrfailure = null,
    Object? newPasswordCreateSuccessOrFailure = null,
  ashwin) {
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
      resetPassToken: null == resetPassToken
          ? _value.resetPassToken
          : resetPassToken // ignore: cast_nullable_to_non_nullable
              as String,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      newPasswordCreateSuccessOrFailure: null ==
              newPasswordCreateSuccessOrFailure
          ? _value.newPasswordCreateSuccessOrFailure
          : newPasswordCreateSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  ashwin
ashwin

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
      String resetPassToken,
      Option<Either<AuthFailure, Unit>> successOrfailure,
      Option<Either<AuthFailure, Unit>> newPasswordCreateSuccessOrFailureashwin);
ashwin

/// @nodoc
class __$$OtpVerificationStateImplCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res, _$OtpVerificationStateImpl>
    implements _$$OtpVerificationStateImplCopyWith<$Res> {
  __$$OtpVerificationStateImplCopyWithImpl(_$OtpVerificationStateImpl _value,
      $Res Function(_$OtpVerificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isResendOtp = null,
    Object? isSubmit = null,
    Object? resetPassToken = null,
    Object? successOrfailure = null,
    Object? newPasswordCreateSuccessOrFailure = null,
  ashwin) {
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
      resetPassToken: null == resetPassToken
          ? _value.resetPassToken
          : resetPassToken // ignore: cast_nullable_to_non_nullable
              as String,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      newPasswordCreateSuccessOrFailure: null ==
              newPasswordCreateSuccessOrFailure
          ? _value.newPasswordCreateSuccessOrFailure
          : newPasswordCreateSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  ashwin
ashwin

/// @nodoc

class _$OtpVerificationStateImpl implements _OtpVerificationState {
  const _$OtpVerificationStateImpl(
      {required this.isSubmitting,
      required this.isResendOtp,
      required this.isSubmit,
      required this.resetPassToken,
      required this.successOrfailure,
      required this.newPasswordCreateSuccessOrFailureashwin);

  @override
  final bool isSubmitting;
  @override
  final bool isResendOtp;
  @override
  final bool isSubmit;
  @override
  final String resetPassToken;
  @override
  final Option<Either<AuthFailure, Unit>> successOrfailure;
  @override
  final Option<Either<AuthFailure, Unit>> newPasswordCreateSuccessOrFailure;

  @override
  String toString() {
    return 'OtpVerificationState(isSubmitting: $isSubmitting, isResendOtp: $isResendOtp, isSubmit: $isSubmit, resetPassToken: $resetPassToken, successOrfailure: $successOrfailure, newPasswordCreateSuccessOrFailure: $newPasswordCreateSuccessOrFailure)';
  ashwin

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
            (identical(other.resetPassToken, resetPassToken) ||
                other.resetPassToken == resetPassToken) &&
            (identical(other.successOrfailure, successOrfailure) ||
                other.successOrfailure == successOrfailure) &&
            (identical(other.newPasswordCreateSuccessOrFailure,
                    newPasswordCreateSuccessOrFailure) ||
                other.newPasswordCreateSuccessOrFailure ==
                    newPasswordCreateSuccessOrFailure));
  ashwin

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      isResendOtp,
      isSubmit,
      resetPassToken,
      successOrfailure,
      newPasswordCreateSuccessOrFailure);

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith =>
          __$$OtpVerificationStateImplCopyWithImpl<_$OtpVerificationStateImpl>(
              this, _$identity);
ashwin

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState(
      {required final bool isSubmitting,
      required final bool isResendOtp,
      required final bool isSubmit,
      required final String resetPassToken,
      required final Option<Either<AuthFailure, Unit>> successOrfailure,
      required final Option<Either<AuthFailure, Unit>>
          newPasswordCreateSuccessOrFailureashwin) = _$OtpVerificationStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get isResendOtp;
  @override
  bool get isSubmit;
  @override
  String get resetPassToken;
  @override
  Option<Either<AuthFailure, Unit>> get successOrfailure;
  @override
  Option<Either<AuthFailure, Unit>> get newPasswordCreateSuccessOrFailure;

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
ashwin
