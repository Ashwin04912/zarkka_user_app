// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcomming_order_resp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpcommingOrderRespModel _$UpcommingOrderRespModelFromJson(
    Map<String, dynamic> json) {
  return _UpcommingOrderRespModel.fromJson(json);
}

/// @nodoc
mixin _$UpcommingOrderRespModel {
  String get status => throw _privateConstructorUsedError;
  List<String> get message => throw _privateConstructorUsedError;
  List<OrderData> get data => throw _privateConstructorUsedError;

  /// Serializes this UpcommingOrderRespModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpcommingOrderRespModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpcommingOrderRespModelCopyWith<UpcommingOrderRespModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcommingOrderRespModelCopyWith<$Res> {
  factory $UpcommingOrderRespModelCopyWith(UpcommingOrderRespModel value,
          $Res Function(UpcommingOrderRespModel) then) =
      _$UpcommingOrderRespModelCopyWithImpl<$Res, UpcommingOrderRespModel>;
  @useResult
  $Res call({String status, List<String> message, List<OrderData> data});
}

/// @nodoc
class _$UpcommingOrderRespModelCopyWithImpl<$Res,
        $Val extends UpcommingOrderRespModel>
    implements $UpcommingOrderRespModelCopyWith<$Res> {
  _$UpcommingOrderRespModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpcommingOrderRespModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcommingOrderRespModelImplCopyWith<$Res>
    implements $UpcommingOrderRespModelCopyWith<$Res> {
  factory _$$UpcommingOrderRespModelImplCopyWith(
          _$UpcommingOrderRespModelImpl value,
          $Res Function(_$UpcommingOrderRespModelImpl) then) =
      __$$UpcommingOrderRespModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<String> message, List<OrderData> data});
}

/// @nodoc
class __$$UpcommingOrderRespModelImplCopyWithImpl<$Res>
    extends _$UpcommingOrderRespModelCopyWithImpl<$Res,
        _$UpcommingOrderRespModelImpl>
    implements _$$UpcommingOrderRespModelImplCopyWith<$Res> {
  __$$UpcommingOrderRespModelImplCopyWithImpl(
      _$UpcommingOrderRespModelImpl _value,
      $Res Function(_$UpcommingOrderRespModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpcommingOrderRespModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$UpcommingOrderRespModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcommingOrderRespModelImpl implements _UpcommingOrderRespModel {
  const _$UpcommingOrderRespModelImpl(
      {required this.status,
      required final List<String> message,
      required final List<OrderData> data})
      : _message = message,
        _data = data;

  factory _$UpcommingOrderRespModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcommingOrderRespModelImplFromJson(json);

  @override
  final String status;
  final List<String> _message;
  @override
  List<String> get message {
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  final List<OrderData> _data;
  @override
  List<OrderData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UpcommingOrderRespModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcommingOrderRespModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_message),
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of UpcommingOrderRespModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcommingOrderRespModelImplCopyWith<_$UpcommingOrderRespModelImpl>
      get copyWith => __$$UpcommingOrderRespModelImplCopyWithImpl<
          _$UpcommingOrderRespModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcommingOrderRespModelImplToJson(
      this,
    );
  }
}

abstract class _UpcommingOrderRespModel implements UpcommingOrderRespModel {
  const factory _UpcommingOrderRespModel(
      {required final String status,
      required final List<String> message,
      required final List<OrderData> data}) = _$UpcommingOrderRespModelImpl;

  factory _UpcommingOrderRespModel.fromJson(Map<String, dynamic> json) =
      _$UpcommingOrderRespModelImpl.fromJson;

  @override
  String get status;
  @override
  List<String> get message;
  @override
  List<OrderData> get data;

  /// Create a copy of UpcommingOrderRespModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpcommingOrderRespModelImplCopyWith<_$UpcommingOrderRespModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderData _$OrderDataFromJson(Map<String, dynamic> json) {
  return _OrderData.fromJson(json);
}

/// @nodoc
mixin _$OrderData {
  String get userId => throw _privateConstructorUsedError;
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerEmail => throw _privateConstructorUsedError;
  String get contactNumber => throw _privateConstructorUsedError;
  Address get customerAddress => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;

  /// Serializes this OrderData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDataCopyWith<OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res, OrderData>;
  @useResult
  $Res call(
      {String userId,
      List<OrderItem> orderItems,
      String customerName,
      String customerEmail,
      String contactNumber,
      Address customerAddress,
      String status,
      double totalPrice,
      String orderId});

  $AddressCopyWith<$Res> get customerAddress;
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res, $Val extends OrderData>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? orderItems = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? contactNumber = null,
    Object? customerAddress = null,
    Object? status = null,
    Object? totalPrice = null,
    Object? orderId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get customerAddress {
    return $AddressCopyWith<$Res>(_value.customerAddress, (value) {
      return _then(_value.copyWith(customerAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDataImplCopyWith<$Res>
    implements $OrderDataCopyWith<$Res> {
  factory _$$OrderDataImplCopyWith(
          _$OrderDataImpl value, $Res Function(_$OrderDataImpl) then) =
      __$$OrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      List<OrderItem> orderItems,
      String customerName,
      String customerEmail,
      String contactNumber,
      Address customerAddress,
      String status,
      double totalPrice,
      String orderId});

  @override
  $AddressCopyWith<$Res> get customerAddress;
}

/// @nodoc
class __$$OrderDataImplCopyWithImpl<$Res>
    extends _$OrderDataCopyWithImpl<$Res, _$OrderDataImpl>
    implements _$$OrderDataImplCopyWith<$Res> {
  __$$OrderDataImplCopyWithImpl(
      _$OrderDataImpl _value, $Res Function(_$OrderDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? orderItems = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? contactNumber = null,
    Object? customerAddress = null,
    Object? status = null,
    Object? totalPrice = null,
    Object? orderId = null,
  }) {
    return _then(_$OrderDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDataImpl implements _OrderData {
  const _$OrderDataImpl(
      {required this.userId,
      required final List<OrderItem> orderItems,
      required this.customerName,
      required this.customerEmail,
      required this.contactNumber,
      required this.customerAddress,
      required this.status,
      required this.totalPrice,
      required this.orderId})
      : _orderItems = orderItems;

  factory _$OrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDataImplFromJson(json);

  @override
  final String userId;
  final List<OrderItem> _orderItems;
  @override
  List<OrderItem> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  final String customerName;
  @override
  final String customerEmail;
  @override
  final String contactNumber;
  @override
  final Address customerAddress;
  @override
  final String status;
  @override
  final double totalPrice;
  @override
  final String orderId;

  @override
  String toString() {
    return 'OrderData(userId: $userId, orderItems: $orderItems, customerName: $customerName, customerEmail: $customerEmail, contactNumber: $contactNumber, customerAddress: $customerAddress, status: $status, totalPrice: $totalPrice, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_orderItems),
      customerName,
      customerEmail,
      contactNumber,
      customerAddress,
      status,
      totalPrice,
      orderId);

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      __$$OrderDataImplCopyWithImpl<_$OrderDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDataImplToJson(
      this,
    );
  }
}

abstract class _OrderData implements OrderData {
  const factory _OrderData(
      {required final String userId,
      required final List<OrderItem> orderItems,
      required final String customerName,
      required final String customerEmail,
      required final String contactNumber,
      required final Address customerAddress,
      required final String status,
      required final double totalPrice,
      required final String orderId}) = _$OrderDataImpl;

  factory _OrderData.fromJson(Map<String, dynamic> json) =
      _$OrderDataImpl.fromJson;

  @override
  String get userId;
  @override
  List<OrderItem> get orderItems;
  @override
  String get customerName;
  @override
  String get customerEmail;
  @override
  String get contactNumber;
  @override
  Address get customerAddress;
  @override
  String get status;
  @override
  double get totalPrice;
  @override
  String get orderId;

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  String get orderItemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  double get pricePerItem => throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call({String orderItemId, String name, int qty, double pricePerItem});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderItemId = null,
    Object? name = null,
    Object? qty = null,
    Object? pricePerItem = null,
  }) {
    return _then(_value.copyWith(
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerItem: null == pricePerItem
          ? _value.pricePerItem
          : pricePerItem // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderItemId, String name, int qty, double pricePerItem});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderItemId = null,
    Object? name = null,
    Object? qty = null,
    Object? pricePerItem = null,
  }) {
    return _then(_$OrderItemImpl(
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerItem: null == pricePerItem
          ? _value.pricePerItem
          : pricePerItem // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {required this.orderItemId,
      required this.name,
      required this.qty,
      required this.pricePerItem});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final String orderItemId;
  @override
  final String name;
  @override
  final int qty;
  @override
  final double pricePerItem;

  @override
  String toString() {
    return 'OrderItem(orderItemId: $orderItemId, name: $name, qty: $qty, pricePerItem: $pricePerItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.pricePerItem, pricePerItem) ||
                other.pricePerItem == pricePerItem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderItemId, name, qty, pricePerItem);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final String orderItemId,
      required final String name,
      required final int qty,
      required final double pricePerItem}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  String get orderItemId;
  @override
  String get name;
  @override
  int get qty;
  @override
  double get pricePerItem;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get addressId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get pincode => throw _privateConstructorUsedError;
  String get flat => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get landmark => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String addressId,
      String type,
      String pincode,
      String flat,
      String area,
      String landmark});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
    Object? type = null,
    Object? pincode = null,
    Object? flat = null,
    Object? area = null,
    Object? landmark = null,
  }) {
    return _then(_value.copyWith(
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String addressId,
      String type,
      String pincode,
      String flat,
      String area,
      String landmark});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
    Object? type = null,
    Object? pincode = null,
    Object? flat = null,
    Object? area = null,
    Object? landmark = null,
  }) {
    return _then(_$AddressImpl(
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.addressId,
      required this.type,
      required this.pincode,
      required this.flat,
      required this.area,
      required this.landmark});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String addressId;
  @override
  final String type;
  @override
  final String pincode;
  @override
  final String flat;
  @override
  final String area;
  @override
  final String landmark;

  @override
  String toString() {
    return 'Address(addressId: $addressId, type: $type, pincode: $pincode, flat: $flat, area: $area, landmark: $landmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.flat, flat) || other.flat == flat) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, addressId, type, pincode, flat, area, landmark);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String addressId,
      required final String type,
      required final String pincode,
      required final String flat,
      required final String area,
      required final String landmark}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get addressId;
  @override
  String get type;
  @override
  String get pincode;
  @override
  String get flat;
  @override
  String get area;
  @override
  String get landmark;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
