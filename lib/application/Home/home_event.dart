part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getItems({
    required String category,
  }) = _getItems;
  
}///