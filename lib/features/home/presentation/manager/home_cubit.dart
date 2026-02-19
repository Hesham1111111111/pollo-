import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final CarouselSliderController carouselController = CarouselSliderController();

  int activeIndex = 0;

  void setCurrentPage(int index) {
    activeIndex = index;
    emit(CarouselIndexChanged());
  }
}
