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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCount value) initialCount,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
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
  }) {
    return initialCount(length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return initialCount?.call(length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
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
  }) {
    return initialCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return initialCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
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
  }) {
    return increment(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return increment?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
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
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
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
  }) {
    return decrement(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int length)? initialCount,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return decrement?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int length)? initialCount,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
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
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCount value)? initialCount,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCount value)? initialCount,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
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
mixin _$MyOrdersState {
  List<int> get itemCount => throw _privateConstructorUsedError;

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
  $Res call({List<int> itemCount});
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
  }) {
    return _then(_value.copyWith(
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
  $Res call({List<int> itemCount});
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
  }) {
    return _then(_$MyOrdersStateImpl(
      itemCount: null == itemCount
          ? _value._itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$MyOrdersStateImpl implements _MyOrdersState {
  _$MyOrdersStateImpl({required final List<int> itemCount})
      : _itemCount = itemCount;

  final List<int> _itemCount;
  @override
  List<int> get itemCount {
    if (_itemCount is EqualUnmodifiableListView) return _itemCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemCount);
  }

  @override
  String toString() {
    return 'MyOrdersState(itemCount: $itemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._itemCount, _itemCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itemCount));

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersStateImplCopyWith<_$MyOrdersStateImpl> get copyWith =>
      __$$MyOrdersStateImplCopyWithImpl<_$MyOrdersStateImpl>(this, _$identity);
}

abstract class _MyOrdersState implements MyOrdersState {
  factory _MyOrdersState({required final List<int> itemCount}) =
      _$MyOrdersStateImpl;

  @override
  List<int> get itemCount;

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersStateImplCopyWith<_$MyOrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
