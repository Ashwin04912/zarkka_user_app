// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUpcommingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUpcommingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUpcommingOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUpcommingOrders value) getUpcommingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUpcommingOrders value)? getUpcommingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUpcommingOrders value)? getUpcommingOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getUpcommingOrdersImplCopyWith<$Res> {
  factory _$$getUpcommingOrdersImplCopyWith(_$getUpcommingOrdersImpl value,
          $Res Function(_$getUpcommingOrdersImpl) then) =
      __$$getUpcommingOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getUpcommingOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$getUpcommingOrdersImpl>
    implements _$$getUpcommingOrdersImplCopyWith<$Res> {
  __$$getUpcommingOrdersImplCopyWithImpl(_$getUpcommingOrdersImpl _value,
      $Res Function(_$getUpcommingOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getUpcommingOrdersImpl implements _getUpcommingOrders {
  const _$getUpcommingOrdersImpl();

  @override
  String toString() {
    return 'OrdersEvent.getUpcommingOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getUpcommingOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUpcommingOrders,
  }) {
    return getUpcommingOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUpcommingOrders,
  }) {
    return getUpcommingOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUpcommingOrders,
    required TResult orElse(),
  }) {
    if (getUpcommingOrders != null) {
      return getUpcommingOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUpcommingOrders value) getUpcommingOrders,
  }) {
    return getUpcommingOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUpcommingOrders value)? getUpcommingOrders,
  }) {
    return getUpcommingOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUpcommingOrders value)? getUpcommingOrders,
    required TResult orElse(),
  }) {
    if (getUpcommingOrders != null) {
      return getUpcommingOrders(this);
    }
    return orElse();
  }
}

abstract class _getUpcommingOrders implements OrdersEvent {
  const factory _getUpcommingOrders() = _$getUpcommingOrdersImpl;
}

/// @nodoc
mixin _$OrdersState {
  Option<Either<FormFailure, UpcommingOrderRespModel>>
      get orderRespModelOrFailure => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {Option<Either<FormFailure, UpcommingOrderRespModel>>
          orderRespModelOrFailure,
      bool isSubmitting});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderRespModelOrFailure = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      orderRespModelOrFailure: null == orderRespModelOrFailure
          ? _value.orderRespModelOrFailure
          : orderRespModelOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, UpcommingOrderRespModel>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStateImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$OrderStateImplCopyWith(
          _$OrderStateImpl value, $Res Function(_$OrderStateImpl) then) =
      __$$OrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<FormFailure, UpcommingOrderRespModel>>
          orderRespModelOrFailure,
      bool isSubmitting});
}

/// @nodoc
class __$$OrderStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderStateImpl>
    implements _$$OrderStateImplCopyWith<$Res> {
  __$$OrderStateImplCopyWithImpl(
      _$OrderStateImpl _value, $Res Function(_$OrderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderRespModelOrFailure = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$OrderStateImpl(
      orderRespModelOrFailure: null == orderRespModelOrFailure
          ? _value.orderRespModelOrFailure
          : orderRespModelOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, UpcommingOrderRespModel>>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl implements _OrderState {
  _$OrderStateImpl(
      {required this.orderRespModelOrFailure, required this.isSubmitting});

  @override
  final Option<Either<FormFailure, UpcommingOrderRespModel>>
      orderRespModelOrFailure;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'OrdersState(orderRespModelOrFailure: $orderRespModelOrFailure, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateImpl &&
            (identical(
                    other.orderRespModelOrFailure, orderRespModelOrFailure) ||
                other.orderRespModelOrFailure == orderRespModelOrFailure) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderRespModelOrFailure, isSubmitting);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      __$$OrderStateImplCopyWithImpl<_$OrderStateImpl>(this, _$identity);
}

abstract class _OrderState implements OrdersState {
  factory _OrderState(
      {required final Option<Either<FormFailure, UpcommingOrderRespModel>>
          orderRespModelOrFailure,
      required final bool isSubmitting}) = _$OrderStateImpl;

  @override
  Option<Either<FormFailure, UpcommingOrderRespModel>>
      get orderRespModelOrFailure;
  @override
  bool get isSubmitting;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
