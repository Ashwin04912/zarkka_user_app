// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyOrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) initialCount,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(CreateOrderRespModel model) getProceededOrders,
    required TResult Function(PlaceOrderReqModel orders)
        placeOrderButtonClickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(CreateOrderRespModel model)? getProceededOrders,
    TResult? Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(CreateOrderRespModel model)? getProceededOrders,
    TResult Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCount value) initialCount,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_getProceededOrders value) getProceededOrders,
    required TResult Function(_placeOrderButtonClickedEvent value)
        placeOrderButtonClickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
    TResult? Function(_getProceededOrders value)? getProceededOrders,
    TResult? Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_getProceededOrders value)? getProceededOrders,
    TResult Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersEventCopyWith<$Res> {
  factory $MyOrdersEventCopyWith(
          MyOrdersEvent value, $Res Function(MyOrdersEvent) then) =
      _$MyOrdersEventCopyWithImpl<$Res, MyOrdersEvent>;
}

/// @nodoc
class _$MyOrdersEventCopyWithImpl<$Res, $Val extends MyOrdersEvent>
    implements $MyOrdersEventCopyWith<$Res> {
  _$MyOrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialCountImplCopyWith<$Res> {
  factory _$$InitialCountImplCopyWith(
          _$InitialCountImpl value, $Res Function(_$InitialCountImpl) then) =
      __$$InitialCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int length});
}

/// @nodoc
class __$$InitialCountImplCopyWithImpl<$Res>
    extends _$MyOrdersEventCopyWithImpl<$Res, _$InitialCountImpl>
    implements _$$InitialCountImplCopyWith<$Res> {
  __$$InitialCountImplCopyWithImpl(
      _$InitialCountImpl _value, $Res Function(_$InitialCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
  }) {
    return _then(_$InitialCountImpl(
      null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialCountImpl implements _InitialCount {
  const _$InitialCountImpl(this.length);

  @override
  final int length;

  @override
  String toString() {
    return 'MyOrdersEvent.initialCount(length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialCountImpl &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, length);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCountImplCopyWith<_$InitialCountImpl> get copyWith =>
      __$$InitialCountImplCopyWithImpl<_$InitialCountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) initialCount,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(CreateOrderRespModel model) getProceededOrders,
    required TResult Function(PlaceOrderReqModel orders)
        placeOrderButtonClickedEvent,
  }) {
    return initialCount(length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(CreateOrderRespModel model)? getProceededOrders,
    TResult? Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
  }) {
    return initialCount?.call(length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(CreateOrderRespModel model)? getProceededOrders,
    TResult Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (initialCount != null) {
      return initialCount(length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCount value) initialCount,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_getProceededOrders value) getProceededOrders,
    required TResult Function(_placeOrderButtonClickedEvent value)
        placeOrderButtonClickedEvent,
  }) {
    return initialCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
    TResult? Function(_getProceededOrders value)? getProceededOrders,
    TResult? Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
  }) {
    return initialCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_getProceededOrders value)? getProceededOrders,
    TResult Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (initialCount != null) {
      return initialCount(this);
    }
    return orElse();
  }
}

abstract class _InitialCount implements MyOrdersEvent {
  const factory _InitialCount(final int length) = _$InitialCountImpl;

  int get length;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialCountImplCopyWith<_$InitialCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementImplCopyWith<$Res> {
  factory _$$IncrementImplCopyWith(
          _$IncrementImpl value, $Res Function(_$IncrementImpl) then) =
      __$$IncrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$IncrementImplCopyWithImpl<$Res>
    extends _$MyOrdersEventCopyWithImpl<$Res, _$IncrementImpl>
    implements _$$IncrementImplCopyWith<$Res> {
  __$$IncrementImplCopyWithImpl(
      _$IncrementImpl _value, $Res Function(_$IncrementImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$IncrementImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncrementImpl implements _Increment {
  const _$IncrementImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MyOrdersEvent.increment(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      __$$IncrementImplCopyWithImpl<_$IncrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) initialCount,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(CreateOrderRespModel model) getProceededOrders,
    required TResult Function(PlaceOrderReqModel orders)
        placeOrderButtonClickedEvent,
  }) {
    return increment(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(CreateOrderRespModel model)? getProceededOrders,
    TResult? Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
  }) {
    return increment?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(CreateOrderRespModel model)? getProceededOrders,
    TResult Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCount value) initialCount,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_getProceededOrders value) getProceededOrders,
    required TResult Function(_placeOrderButtonClickedEvent value)
        placeOrderButtonClickedEvent,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
    TResult? Function(_getProceededOrders value)? getProceededOrders,
    TResult? Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_getProceededOrders value)? getProceededOrders,
    TResult Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _Increment implements MyOrdersEvent {
  const factory _Increment(final int index) = _$IncrementImpl;

  int get index;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementImplCopyWith<$Res> {
  factory _$$DecrementImplCopyWith(
          _$DecrementImpl value, $Res Function(_$DecrementImpl) then) =
      __$$DecrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DecrementImplCopyWithImpl<$Res>
    extends _$MyOrdersEventCopyWithImpl<$Res, _$DecrementImpl>
    implements _$$DecrementImplCopyWith<$Res> {
  __$$DecrementImplCopyWithImpl(
      _$DecrementImpl _value, $Res Function(_$DecrementImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DecrementImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecrementImpl implements _Decrement {
  const _$DecrementImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MyOrdersEvent.decrement(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      __$$DecrementImplCopyWithImpl<_$DecrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) initialCount,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(CreateOrderRespModel model) getProceededOrders,
    required TResult Function(PlaceOrderReqModel orders)
        placeOrderButtonClickedEvent,
  }) {
    return decrement(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(CreateOrderRespModel model)? getProceededOrders,
    TResult? Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
  }) {
    return decrement?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(CreateOrderRespModel model)? getProceededOrders,
    TResult Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCount value) initialCount,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_getProceededOrders value) getProceededOrders,
    required TResult Function(_placeOrderButtonClickedEvent value)
        placeOrderButtonClickedEvent,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
    TResult? Function(_getProceededOrders value)? getProceededOrders,
    TResult? Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_getProceededOrders value)? getProceededOrders,
    TResult Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _Decrement implements MyOrdersEvent {
  const factory _Decrement(final int index) = _$DecrementImpl;

  int get index;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getProceededOrdersImplCopyWith<$Res> {
  factory _$$getProceededOrdersImplCopyWith(_$getProceededOrdersImpl value,
          $Res Function(_$getProceededOrdersImpl) then) =
      __$$getProceededOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateOrderRespModel model});
}

/// @nodoc
class __$$getProceededOrdersImplCopyWithImpl<$Res>
    extends _$MyOrdersEventCopyWithImpl<$Res, _$getProceededOrdersImpl>
    implements _$$getProceededOrdersImplCopyWith<$Res> {
  __$$getProceededOrdersImplCopyWithImpl(_$getProceededOrdersImpl _value,
      $Res Function(_$getProceededOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$getProceededOrdersImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateOrderRespModel,
    ));
  }
}

/// @nodoc

class _$getProceededOrdersImpl implements _getProceededOrders {
  const _$getProceededOrdersImpl({required this.model});

  @override
  final CreateOrderRespModel model;

  @override
  String toString() {
    return 'MyOrdersEvent.getProceededOrders(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getProceededOrdersImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getProceededOrdersImplCopyWith<_$getProceededOrdersImpl> get copyWith =>
      __$$getProceededOrdersImplCopyWithImpl<_$getProceededOrdersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) initialCount,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(CreateOrderRespModel model) getProceededOrders,
    required TResult Function(PlaceOrderReqModel orders)
        placeOrderButtonClickedEvent,
  }) {
    return getProceededOrders(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(CreateOrderRespModel model)? getProceededOrders,
    TResult? Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
  }) {
    return getProceededOrders?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(CreateOrderRespModel model)? getProceededOrders,
    TResult Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (getProceededOrders != null) {
      return getProceededOrders(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCount value) initialCount,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_getProceededOrders value) getProceededOrders,
    required TResult Function(_placeOrderButtonClickedEvent value)
        placeOrderButtonClickedEvent,
  }) {
    return getProceededOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
    TResult? Function(_getProceededOrders value)? getProceededOrders,
    TResult? Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
  }) {
    return getProceededOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_getProceededOrders value)? getProceededOrders,
    TResult Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (getProceededOrders != null) {
      return getProceededOrders(this);
    }
    return orElse();
  }
}

abstract class _getProceededOrders implements MyOrdersEvent {
  const factory _getProceededOrders(
      {required final CreateOrderRespModel model}) = _$getProceededOrdersImpl;

  CreateOrderRespModel get model;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getProceededOrdersImplCopyWith<_$getProceededOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$placeOrderButtonClickedEventImplCopyWith<$Res> {
  factory _$$placeOrderButtonClickedEventImplCopyWith(
          _$placeOrderButtonClickedEventImpl value,
          $Res Function(_$placeOrderButtonClickedEventImpl) then) =
      __$$placeOrderButtonClickedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceOrderReqModel orders});
}

/// @nodoc
class __$$placeOrderButtonClickedEventImplCopyWithImpl<$Res>
    extends _$MyOrdersEventCopyWithImpl<$Res,
        _$placeOrderButtonClickedEventImpl>
    implements _$$placeOrderButtonClickedEventImplCopyWith<$Res> {
  __$$placeOrderButtonClickedEventImplCopyWithImpl(
      _$placeOrderButtonClickedEventImpl _value,
      $Res Function(_$placeOrderButtonClickedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$placeOrderButtonClickedEventImpl(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as PlaceOrderReqModel,
    ));
  }
}

/// @nodoc

class _$placeOrderButtonClickedEventImpl
    implements _placeOrderButtonClickedEvent {
  const _$placeOrderButtonClickedEventImpl({required this.orders});

  @override
  final PlaceOrderReqModel orders;

  @override
  String toString() {
    return 'MyOrdersEvent.placeOrderButtonClickedEvent(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$placeOrderButtonClickedEventImpl &&
            (identical(other.orders, orders) || other.orders == orders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orders);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$placeOrderButtonClickedEventImplCopyWith<
          _$placeOrderButtonClickedEventImpl>
      get copyWith => __$$placeOrderButtonClickedEventImplCopyWithImpl<
          _$placeOrderButtonClickedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int length) initialCount,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(CreateOrderRespModel model) getProceededOrders,
    required TResult Function(PlaceOrderReqModel orders)
        placeOrderButtonClickedEvent,
  }) {
    return placeOrderButtonClickedEvent(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(CreateOrderRespModel model)? getProceededOrders,
    TResult? Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
  }) {
    return placeOrderButtonClickedEvent?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(CreateOrderRespModel model)? getProceededOrders,
    TResult Function(PlaceOrderReqModel orders)? placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (placeOrderButtonClickedEvent != null) {
      return placeOrderButtonClickedEvent(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCount value) initialCount,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_getProceededOrders value) getProceededOrders,
    required TResult Function(_placeOrderButtonClickedEvent value)
        placeOrderButtonClickedEvent,
  }) {
    return placeOrderButtonClickedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
    TResult? Function(_getProceededOrders value)? getProceededOrders,
    TResult? Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
  }) {
    return placeOrderButtonClickedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_getProceededOrders value)? getProceededOrders,
    TResult Function(_placeOrderButtonClickedEvent value)?
        placeOrderButtonClickedEvent,
    required TResult orElse(),
  }) {
    if (placeOrderButtonClickedEvent != null) {
      return placeOrderButtonClickedEvent(this);
    }
    return orElse();
  }
}

abstract class _placeOrderButtonClickedEvent implements MyOrdersEvent {
  const factory _placeOrderButtonClickedEvent(
          {required final PlaceOrderReqModel orders}) =
      _$placeOrderButtonClickedEventImpl;

  PlaceOrderReqModel get orders;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$placeOrderButtonClickedEventImplCopyWith<
          _$placeOrderButtonClickedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyOrdersState {
  List<int> get itemCount => throw _privateConstructorUsedError;
  CreateOrderRespModel get model => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<FormFailure, PlaceOrderRespModel>> get successOrFailure =>
      throw _privateConstructorUsedError;
  bool get isDataPresent => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersStateCopyWith<MyOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersStateCopyWith<$Res> {
  factory $MyOrdersStateCopyWith(
          MyOrdersState value, $Res Function(MyOrdersState) then) =
      _$MyOrdersStateCopyWithImpl<$Res, MyOrdersState>;
  @useResult
  $Res call(
      {List<int> itemCount,
      CreateOrderRespModel model,
      bool isSubmitting,
      Option<Either<FormFailure, PlaceOrderRespModel>> successOrFailure,
      bool isDataPresent});
}

/// @nodoc
class _$MyOrdersStateCopyWithImpl<$Res, $Val extends MyOrdersState>
    implements $MyOrdersStateCopyWith<$Res> {
  _$MyOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCount = null,
    Object? model = null,
    Object? isSubmitting = null,
    Object? successOrFailure = null,
    Object? isDataPresent = null,
  }) {
    return _then(_value.copyWith(
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateOrderRespModel,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, PlaceOrderRespModel>>,
      isDataPresent: null == isDataPresent
          ? _value.isDataPresent
          : isDataPresent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersStateImplCopyWith<$Res>
    implements $MyOrdersStateCopyWith<$Res> {
  factory _$$MyOrdersStateImplCopyWith(
          _$MyOrdersStateImpl value, $Res Function(_$MyOrdersStateImpl) then) =
      __$$MyOrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> itemCount,
      CreateOrderRespModel model,
      bool isSubmitting,
      Option<Either<FormFailure, PlaceOrderRespModel>> successOrFailure,
      bool isDataPresent});
}

/// @nodoc
class __$$MyOrdersStateImplCopyWithImpl<$Res>
    extends _$MyOrdersStateCopyWithImpl<$Res, _$MyOrdersStateImpl>
    implements _$$MyOrdersStateImplCopyWith<$Res> {
  __$$MyOrdersStateImplCopyWithImpl(
      _$MyOrdersStateImpl _value, $Res Function(_$MyOrdersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCount = null,
    Object? model = null,
    Object? isSubmitting = null,
    Object? successOrFailure = null,
    Object? isDataPresent = null,
  }) {
    return _then(_$MyOrdersStateImpl(
      itemCount: null == itemCount
          ? _value._itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateOrderRespModel,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<FormFailure, PlaceOrderRespModel>>,
      isDataPresent: null == isDataPresent
          ? _value.isDataPresent
          : isDataPresent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyOrdersStateImpl implements _MyOrdersState {
  _$MyOrdersStateImpl(
      {required final List<int> itemCount,
      required this.model,
      required this.isSubmitting,
      required this.successOrFailure,
      required this.isDataPresent})
      : _itemCount = itemCount;

  final List<int> _itemCount;
  @override
  List<int> get itemCount {
    if (_itemCount is EqualUnmodifiableListView) return _itemCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemCount);
  }

  @override
  final CreateOrderRespModel model;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<FormFailure, PlaceOrderRespModel>> successOrFailure;
  @override
  final bool isDataPresent;

  @override
  String toString() {
    return 'MyOrdersState(itemCount: $itemCount, model: $model, isSubmitting: $isSubmitting, successOrFailure: $successOrFailure, isDataPresent: $isDataPresent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._itemCount, _itemCount) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.successOrFailure, successOrFailure) ||
                other.successOrFailure == successOrFailure) &&
            (identical(other.isDataPresent, isDataPresent) ||
                other.isDataPresent == isDataPresent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_itemCount),
      model,
      isSubmitting,
      successOrFailure,
      isDataPresent);

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersStateImplCopyWith<_$MyOrdersStateImpl> get copyWith =>
      __$$MyOrdersStateImplCopyWithImpl<_$MyOrdersStateImpl>(this, _$identity);
}

abstract class _MyOrdersState implements MyOrdersState {
  factory _MyOrdersState(
      {required final List<int> itemCount,
      required final CreateOrderRespModel model,
      required final bool isSubmitting,
      required final Option<Either<FormFailure, PlaceOrderRespModel>>
          successOrFailure,
      required final bool isDataPresent}) = _$MyOrdersStateImpl;

  @override
  List<int> get itemCount;
  @override
  CreateOrderRespModel get model;
  @override
  bool get isSubmitting;
  @override
  Option<Either<FormFailure, PlaceOrderRespModel>> get successOrFailure;
  @override
  bool get isDataPresent;

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersStateImplCopyWith<_$MyOrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
