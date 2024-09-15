// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserLogin user) loginButtonPressedEvent,
    required TResult Function() eyeButtonPressed,
    required TResult Function(String email) sendCodePressesEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserLogin user)? loginButtonPressedEvent,
    TResult? Function()? eyeButtonPressed,
    TResult? Function(String email)? sendCodePressesEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserLogin user)? loginButtonPressedEvent,
    TResult Function()? eyeButtonPressed,
    TResult Function(String email)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressedEvent value)
        loginButtonPressedEvent,
    required TResult Function(_EyeButtonPressed value) eyeButtonPressed,
    required TResult Function(_sendCodePressesEvent value) sendCodePressesEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult? Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult? Function(_sendCodePressesEvent value)? sendCodePressesEvent,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult Function(_sendCodePressesEvent value)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) =>
      throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
ashwin

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
ashwin

/// @nodoc
abstract class _$$LoginButtonPressedEventImplCopyWith<$Res> {
  factory _$$LoginButtonPressedEventImplCopyWith(
          _$LoginButtonPressedEventImpl value,
          $Res Function(_$LoginButtonPressedEventImpl) then) =
      __$$LoginButtonPressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserLogin userashwin);

  $UserLoginCopyWith<$Res> get user;
ashwin

/// @nodoc
class __$$LoginButtonPressedEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginButtonPressedEventImpl>
    implements _$$LoginButtonPressedEventImplCopyWith<$Res> {
  __$$LoginButtonPressedEventImplCopyWithImpl(
      _$LoginButtonPressedEventImpl _value,
      $Res Function(_$LoginButtonPressedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  ashwin) {
    return _then(_$LoginButtonPressedEventImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserLogin,
    ));
  ashwin

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLoginCopyWith<$Res> get user {
    return $UserLoginCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    ashwin);
  ashwin
ashwin

/// @nodoc

class _$LoginButtonPressedEventImpl implements _LoginButtonPressedEvent {
  const _$LoginButtonPressedEventImpl({required this.userashwin);

  @override
  final UserLogin user;

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressedEvent(user: $user)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonPressedEventImpl &&
            (identical(other.user, user) || other.user == user));
  ashwin

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonPressedEventImplCopyWith<_$LoginButtonPressedEventImpl>
      get copyWith => __$$LoginButtonPressedEventImplCopyWithImpl<
          _$LoginButtonPressedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserLogin user) loginButtonPressedEvent,
    required TResult Function() eyeButtonPressed,
    required TResult Function(String email) sendCodePressesEvent,
  ashwin) {
    return loginButtonPressedEvent(user);
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserLogin user)? loginButtonPressedEvent,
    TResult? Function()? eyeButtonPressed,
    TResult? Function(String email)? sendCodePressesEvent,
  ashwin) {
    return loginButtonPressedEvent?.call(user);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserLogin user)? loginButtonPressedEvent,
    TResult Function()? eyeButtonPressed,
    TResult Function(String email)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) {
    if (loginButtonPressedEvent != null) {
      return loginButtonPressedEvent(user);
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressedEvent value)
        loginButtonPressedEvent,
    required TResult Function(_EyeButtonPressed value) eyeButtonPressed,
    required TResult Function(_sendCodePressesEvent value) sendCodePressesEvent,
  ashwin) {
    return loginButtonPressedEvent(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult? Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult? Function(_sendCodePressesEvent value)? sendCodePressesEvent,
  ashwin) {
    return loginButtonPressedEvent?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult Function(_sendCodePressesEvent value)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) {
    if (loginButtonPressedEvent != null) {
      return loginButtonPressedEvent(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _LoginButtonPressedEvent implements LoginEvent {
  const factory _LoginButtonPressedEvent({required final UserLogin userashwin) =
      _$LoginButtonPressedEventImpl;

  UserLogin get user;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginButtonPressedEventImplCopyWith<_$LoginButtonPressedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class _$$EyeButtonPressedImplCopyWith<$Res> {
  factory _$$EyeButtonPressedImplCopyWith(_$EyeButtonPressedImpl value,
          $Res Function(_$EyeButtonPressedImpl) then) =
      __$$EyeButtonPressedImplCopyWithImpl<$Res>;
ashwin

/// @nodoc
class __$$EyeButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$EyeButtonPressedImpl>
    implements _$$EyeButtonPressedImplCopyWith<$Res> {
  __$$EyeButtonPressedImplCopyWithImpl(_$EyeButtonPressedImpl _value,
      $Res Function(_$EyeButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
ashwin

/// @nodoc

class _$EyeButtonPressedImpl implements _EyeButtonPressed {
  const _$EyeButtonPressedImpl();

  @override
  String toString() {
    return 'LoginEvent.eyeButtonPressed()';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EyeButtonPressedImpl);
  ashwin

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserLogin user) loginButtonPressedEvent,
    required TResult Function() eyeButtonPressed,
    required TResult Function(String email) sendCodePressesEvent,
  ashwin) {
    return eyeButtonPressed();
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserLogin user)? loginButtonPressedEvent,
    TResult? Function()? eyeButtonPressed,
    TResult? Function(String email)? sendCodePressesEvent,
  ashwin) {
    return eyeButtonPressed?.call();
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserLogin user)? loginButtonPressedEvent,
    TResult Function()? eyeButtonPressed,
    TResult Function(String email)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) {
    if (eyeButtonPressed != null) {
      return eyeButtonPressed();
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressedEvent value)
        loginButtonPressedEvent,
    required TResult Function(_EyeButtonPressed value) eyeButtonPressed,
    required TResult Function(_sendCodePressesEvent value) sendCodePressesEvent,
  ashwin) {
    return eyeButtonPressed(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult? Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult? Function(_sendCodePressesEvent value)? sendCodePressesEvent,
  ashwin) {
    return eyeButtonPressed?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult Function(_sendCodePressesEvent value)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) {
    if (eyeButtonPressed != null) {
      return eyeButtonPressed(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _EyeButtonPressed implements LoginEvent {
  const factory _EyeButtonPressed() = _$EyeButtonPressedImpl;
ashwin

/// @nodoc
abstract class _$$sendCodePressesEventImplCopyWith<$Res> {
  factory _$$sendCodePressesEventImplCopyWith(_$sendCodePressesEventImpl value,
          $Res Function(_$sendCodePressesEventImpl) then) =
      __$$sendCodePressesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailashwin);
ashwin

/// @nodoc
class __$$sendCodePressesEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$sendCodePressesEventImpl>
    implements _$$sendCodePressesEventImplCopyWith<$Res> {
  __$$sendCodePressesEventImplCopyWithImpl(_$sendCodePressesEventImpl _value,
      $Res Function(_$sendCodePressesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  ashwin) {
    return _then(_$sendCodePressesEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  ashwin
ashwin

/// @nodoc

class _$sendCodePressesEventImpl implements _sendCodePressesEvent {
  const _$sendCodePressesEventImpl({required this.emailashwin);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.sendCodePressesEvent(email: $email)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sendCodePressesEventImpl &&
            (identical(other.email, email) || other.email == email));
  ashwin

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$sendCodePressesEventImplCopyWith<_$sendCodePressesEventImpl>
      get copyWith =>
          __$$sendCodePressesEventImplCopyWithImpl<_$sendCodePressesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserLogin user) loginButtonPressedEvent,
    required TResult Function() eyeButtonPressed,
    required TResult Function(String email) sendCodePressesEvent,
  ashwin) {
    return sendCodePressesEvent(email);
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserLogin user)? loginButtonPressedEvent,
    TResult? Function()? eyeButtonPressed,
    TResult? Function(String email)? sendCodePressesEvent,
  ashwin) {
    return sendCodePressesEvent?.call(email);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserLogin user)? loginButtonPressedEvent,
    TResult Function()? eyeButtonPressed,
    TResult Function(String email)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) {
    if (sendCodePressesEvent != null) {
      return sendCodePressesEvent(email);
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressedEvent value)
        loginButtonPressedEvent,
    required TResult Function(_EyeButtonPressed value) eyeButtonPressed,
    required TResult Function(_sendCodePressesEvent value) sendCodePressesEvent,
  ashwin) {
    return sendCodePressesEvent(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult? Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult? Function(_sendCodePressesEvent value)? sendCodePressesEvent,
  ashwin) {
    return sendCodePressesEvent?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressedEvent value)? loginButtonPressedEvent,
    TResult Function(_EyeButtonPressed value)? eyeButtonPressed,
    TResult Function(_sendCodePressesEvent value)? sendCodePressesEvent,
    required TResult orElse(),
  ashwin) {
    if (sendCodePressesEvent != null) {
      return sendCodePressesEvent(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _sendCodePressesEvent implements LoginEvent {
  const factory _sendCodePressesEvent({required final String emailashwin) =
      _$sendCodePressesEventImpl;

  String get email;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$sendCodePressesEventImplCopyWith<_$sendCodePressesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
ashwin

/// @nodoc
mixin _$LoginState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isEyePressed => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get successOrfailure =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get forgetPassEmailRespSuccessOrFailure =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      bool isEyePressed,
      Option<Either<AuthFailure, Unit>> successOrfailure,
      Option<Either<AuthFailure, Unit>> forgetPassEmailRespSuccessOrFailureashwin);
ashwin

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? isEyePressed = null,
    Object? successOrfailure = null,
    Object? forgetPassEmailRespSuccessOrFailure = null,
  ashwin) {
    return _then(_value.copyWith(
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEyePressed: null == isEyePressed
          ? _value.isEyePressed
          : isEyePressed // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      forgetPassEmailRespSuccessOrFailure: null ==
              forgetPassEmailRespSuccessOrFailure
          ? _value.forgetPassEmailRespSuccessOrFailure
          : forgetPassEmailRespSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  ashwin
ashwin

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      bool isEyePressed,
      Option<Either<AuthFailure, Unit>> successOrfailure,
      Option<Either<AuthFailure, Unit>> forgetPassEmailRespSuccessOrFailureashwin);
ashwin

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? isEyePressed = null,
    Object? successOrfailure = null,
    Object? forgetPassEmailRespSuccessOrFailure = null,
  ashwin) {
    return _then(_$LoginStateImpl(
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEyePressed: null == isEyePressed
          ? _value.isEyePressed
          : isEyePressed // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrfailure: null == successOrfailure
          ? _value.successOrfailure
          : successOrfailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      forgetPassEmailRespSuccessOrFailure: null ==
              forgetPassEmailRespSuccessOrFailure
          ? _value.forgetPassEmailRespSuccessOrFailure
          : forgetPassEmailRespSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  ashwin
ashwin

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.showErrorMessages,
      required this.isSubmitting,
      required this.isEyePressed,
      required this.successOrfailure,
      required this.forgetPassEmailRespSuccessOrFailureashwin);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isEyePressed;
  @override
  final Option<Either<AuthFailure, Unit>> successOrfailure;
  @override
  final Option<Either<AuthFailure, Unit>> forgetPassEmailRespSuccessOrFailure;

  @override
  String toString() {
    return 'LoginState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isEyePressed: $isEyePressed, successOrfailure: $successOrfailure, forgetPassEmailRespSuccessOrFailure: $forgetPassEmailRespSuccessOrFailure)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isEyePressed, isEyePressed) ||
                other.isEyePressed == isEyePressed) &&
            (identical(other.successOrfailure, successOrfailure) ||
                other.successOrfailure == successOrfailure) &&
            (identical(other.forgetPassEmailRespSuccessOrFailure,
                    forgetPassEmailRespSuccessOrFailure) ||
                other.forgetPassEmailRespSuccessOrFailure ==
                    forgetPassEmailRespSuccessOrFailure));
  ashwin

  @override
  int get hashCode => Object.hash(runtimeType, showErrorMessages, isSubmitting,
      isEyePressed, successOrfailure, forgetPassEmailRespSuccessOrFailure);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
ashwin

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final bool showErrorMessages,
      required final bool isSubmitting,
      required final bool isEyePressed,
      required final Option<Either<AuthFailure, Unit>> successOrfailure,
      required final Option<Either<AuthFailure, Unit>>
          forgetPassEmailRespSuccessOrFailureashwin) = _$LoginStateImpl;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isEyePressed;
  @override
  Option<Either<AuthFailure, Unit>> get successOrfailure;
  @override
  Option<Either<AuthFailure, Unit>> get forgetPassEmailRespSuccessOrFailure;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
ashwin
