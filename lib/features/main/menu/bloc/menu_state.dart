part of 'menu_bloc.dart';

sealed class MenuState extends Equatable {
  const MenuState();
}

final class MenuInitial extends MenuState {
  @override
  List<Object> get props => [];
}
