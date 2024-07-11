part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({this.temp = 0});

  final num? temp;

  @override
  List<Object?> get props => [temp];

  HomeState copyWith({
    num? temp,
  }) =>
      HomeState(
        temp: temp ?? this.temp,
      );
}
