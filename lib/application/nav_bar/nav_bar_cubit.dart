import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_bar_state.dart';
part 'nav_bar_cubit.freezed.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarState.initial());

  void changeScreen(int selectedIndex) {
    emit(state.copyWith(selectedIndex: selectedIndex));
  }
}
