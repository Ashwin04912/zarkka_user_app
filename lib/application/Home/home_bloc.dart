import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/Home/home_page_resp_model.dart';
import 'package:tailme/infrastructure/Home/home_api_impl.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final homeApi = HomeApiImpl();
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      final SharedPreferences pref = await SharedPreferences.getInstance();
      final token = pref.getString('token') ?? '';
      await event.map(getItems: (value) async {
        emit(state.copyWith(isLoading: true, listIfSuccess: none()));
        final resp =
            await homeApi.getItemsApi(token: token, category: value.category);

        resp.fold((failure) {
          emit(state.copyWith(
            isLoading: false,
            listIfSuccess: some(left(failure)),
            data : HomePageRespModel(status: failure.toString(), items: [])
          ));
        }, (list) {
          emit(state.copyWith(
            isLoading: false,
            listIfSuccess: some(right(unit)),
            data: list
          ));
        });
      });
    });
  }
}
