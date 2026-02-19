

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'drawer_pages_state.dart';

class DrawerPagesCubit extends Cubit<DrawerPagesState> {
  DrawerPagesCubit() : super(DrawerPagesInitial());

  final CarouselSliderController carouselController = CarouselSliderController();
  int activeIndex = 0;

  void setCurrentPage(int index) {
    activeIndex = index;
    emit(CarouselIndexChanged());
  }
}
