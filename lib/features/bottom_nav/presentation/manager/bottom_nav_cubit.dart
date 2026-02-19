import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int appNavIndex = 0;

  void changeNavIndex(int index) {
    appNavIndex = index;
    emit(AppNavIndexChanged());
  }
}
