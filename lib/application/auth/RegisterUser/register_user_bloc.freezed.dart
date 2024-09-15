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
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  ashwin) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) =>
      throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class $RegisterUserEventCopyWith<$Res> {
  factory $RegisterUserEventCopyWith(
          RegisterUserEvent value, $Res Function(RegisterUserEvent) then) =
      _$RegisterUserEventCopyWithImpl<$Res, RegisterUserEvent>;
ashwin

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
ashwin

/// @nodoc
abstract class _$$SignUpButtonPressedImplCopyWith<$Res> {
  factory _$$SignUpButtonPressedImplCopyWith(_$SignUpButtonPressedImpl value,
          $Res Function(_$SignUpButtonPressedImpl) then) =
      __$$SignUpButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterUserModel userashwin);
ashwin

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
  ashwin) {
    return _then(_$SignUpButtonPressedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RegisterUserModel,
    ));
  ashwin
ashwin

/// @nodoc

class _$SignUpButtonPressedImpl implements _SignUpButtonPressed {
  const _$SignUpButtonPressedImpl({required this.userashwin);

  @override
  final RegisterUserModel user;

  @override
  String toString() {
    return 'RegisterUserEvent.signUpButtonPressed(user: $user)';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpButtonPressedImpl &&
            (identical(other.user, user) || other.user == user));
  ashwin

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
  ashwin) {
    return signUpButtonPressed(user);
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  ashwin) {
    return signUpButtonPressed?.call(user);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) {
    if (signUpButtonPressed != null) {
      return signUpButtonPressed(user);
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  ashwin) {
    return signUpButtonPressed(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  ashwin) {
    return signUpButtonPressed?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) {
    if (signUpButtonPressed != null) {
      return signUpButtonPressed(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _SignUpButtonPressed implements RegisterUserEvent {
  const factory _SignUpButtonPressed({required final RegisterUserModel userashwin) =
      _$SignUpButtonPressedImpl;

  RegisterUserModel get user;

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpButtonPressedImplCopyWith<_$SignUpButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
ashwin

/// @nodoc
abstract class _$$eyeButtonPressedImplCopyWith<$Res> {
  factory _$$eyeButtonPressedImplCopyWith(_$eyeButtonPressedImpl value,
          $Res Function(_$eyeButtonPressedImpl) then) =
      __$$eyeButtonPressedImplCopyWithImpl<$Res>;
ashwin

/// @nodoc
class __$$eyeButtonPressedImplCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res, _$eyeButtonPressedImpl>
    implements _$$eyeButtonPressedImplCopyWith<$Res> {
  __$$eyeButtonPressedImplCopyWithImpl(_$eyeButtonPressedImpl _value,
      $Res Function(_$eyeButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
ashwin

/// @nodoc

class _$eyeButtonPressedImpl implements _eyeButtonPressed {
  const _$eyeButtonPressedImpl();

  @override
  String toString() {
    return 'RegisterUserEvent.eyePassButtonPressed()';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$eyeButtonPressedImpl);
  ashwin

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
    required TResult Function() eyePassButtonPressed,
    required TResult Function() eyeCPassButtonPressed,
  ashwin) {
    return eyePassButtonPressed();
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  ashwin) {
    return eyePassButtonPressed?.call();
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) {
    if (eyePassButtonPressed != null) {
      return eyePassButtonPressed();
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  ashwin) {
    return eyePassButtonPressed(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  ashwin) {
    return eyePassButtonPressed?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) {
    if (eyePassButtonPressed != null) {
      return eyePassButtonPressed(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _eyeButtonPressed implements RegisterUserEvent {
  const factory _eyeButtonPressed() = _$eyeButtonPressedImpl;
ashwin

/// @nodoc
abstract class _$$eyeCPassButtonPressedImplCopyWith<$Res> {
  factory _$$eyeCPassButtonPressedImplCopyWith(
          _$eyeCPassButtonPressedImpl value,
          $Res Function(_$eyeCPassButtonPressedImpl) then) =
      __$$eyeCPassButtonPressedImplCopyWithImpl<$Res>;
ashwin

/// @nodoc
class __$$eyeCPassButtonPressedImplCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res, _$eyeCPassButtonPressedImpl>
    implements _$$eyeCPassButtonPressedImplCopyWith<$Res> {
  __$$eyeCPassButtonPressedImplCopyWithImpl(_$eyeCPassButtonPressedImpl _value,
      $Res Function(_$eyeCPassButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserEvent
  /// with the given fields replaced by the non-null parameter values.
ashwin

/// @nodoc

class _$eyeCPassButtonPressedImpl implements _eyeCPassButtonPressed {
  const _$eyeCPassButtonPressedImpl();

  @override
  String toString() {
    return 'RegisterUserEvent.eyeCPassButtonPressed()';
  ashwin

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$eyeCPassButtonPressedImpl);
  ashwin

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterUserModel user) signUpButtonPressed,
    required TResult Function() eyePassButtonPressed,
    required TResult Function() eyeCPassButtonPressed,
  ashwin) {
    return eyeCPassButtonPressed();
  ashwin

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserModel user)? signUpButtonPressed,
    TResult? Function()? eyePassButtonPressed,
    TResult? Function()? eyeCPassButtonPressed,
  ashwin) {
    return eyeCPassButtonPressed?.call();
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterUserModel user)? signUpButtonPressed,
    TResult Function()? eyePassButtonPressed,
    TResult Function()? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) {
    if (eyeCPassButtonPressed != null) {
      return eyeCPassButtonPressed();
    ashwin
    return orElse();
  ashwin

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpButtonPressed value) signUpButtonPressed,
    required TResult Function(_eyeButtonPressed value) eyePassButtonPressed,
    required TResult Function(_eyeCPassButtonPressed value)
        eyeCPassButtonPressed,
  ashwin) {
    return eyeCPassButtonPressed(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult? Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult? Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
  ashwin) {
    return eyeCPassButtonPressed?.call(this);
  ashwin

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpButtonPressed value)? signUpButtonPressed,
    TResult Function(_eyeButtonPressed value)? eyePassButtonPressed,
    TResult Function(_eyeCPassButtonPressed value)? eyeCPassButtonPressed,
    required TResult orElse(),
  ashwin) {
    if (eyeCPassButtonPressed != null) {
      return eyeCPassButtonPressed(this);
    ashwin
    return orElse();
  ashwin
ashwin

abstract class _eyeCPassButtonPressed implements RegisterUserEvent {
  const factory _eyeCPassButtonPressed() = _$eyeCPassButtonPressedImpl;
ashwin

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
ashwin

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
      bool isCpassEyePressedashwin);
ashwin

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
  ashwin) {
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
  ashwin
ashwin

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
      bool isCpassEyePressedashwin);
ashwin

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
  ashwin) {
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
  ashwin
ashwin

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
      required this.isCpassEyePressedashwin);

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
  ashwin

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
  ashwin

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
ashwin

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
      required final bool isCpassEyePressedashwin) = _$RegisterUserStateImpl;

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
ashwin
