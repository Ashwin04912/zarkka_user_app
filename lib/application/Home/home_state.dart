part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
   factory HomeState({
    required bool isLoading,
    required Option<Either<FormFailure, Unit>> listIfSuccess,
    required HomePageRespModel data
  }) = _Initial;

  factory HomeState.initial() =>  HomeState(
        isLoading: false,
        listIfSuccess: const None(),
        data: HomePageRespModel(status:'', items: [])
      );
}
///