import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/main/home/data/models/weather_response.dart';
import 'package:weather/features/main/home/domain/repository/home_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<GetCurrentWeatherEvent>(_getWeatherData);
  }

  HomeRepository homeRepository = HomeRepository();

  Future<void> _getWeatherData(
    GetCurrentWeatherEvent event,
    Emitter<HomeState> emit,
  ) async {
    // if (!localSource.hasProfile) return;
    // emit(state.copyWith(status: Status.loading));
    final res = await homeRepository.getWeatherData(cityName: 'Tashkent');

    if (res is WeatherResponse) {
      print("res.main?.temp2");
      print(res.main?.temp);
      emit(state.copyWith(temp: ((res.main?.temp ?? 0) - 273.15)));
    }
  }
}
