part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetCurrentWeatherEvent extends HomeEvent {
  const GetCurrentWeatherEvent();

  @override
  List<Object?> get props => [];
}
