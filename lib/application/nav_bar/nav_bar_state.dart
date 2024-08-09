part of 'nav_bar_cubit.dart';

@freezed
class NavBarState with _$NavBarState {
  const factory NavBarState({
    required int selectedIndex,
  }) = _NavbarState;

  const NavBarState._();

  factory NavBarState.initial() => const NavBarState(selectedIndex: 0);

  int selectedScreen(int index) => index;
}
