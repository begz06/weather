part of 'main_bloc.dart';

sealed class MainState extends Equatable {
  const MainState();
}

final class MainInitial extends MainState {
  @override
  List<Object> get props => [];
}
