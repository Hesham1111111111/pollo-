import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/home/data/repo/home_repo.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState());
  final HomeRepo homeRepo;

  final CarouselSliderController carouselController = CarouselSliderController();  void setCurrentPage(int index) {
    emit(state.copyWith(activeIndex: index));
  }

  Future<void>getCategoriesTop() async {
    emit(state.copyWith(topCategoriesState: const RequestState.loading()));
    final result = await homeRepo.getCategoryTop();
    result.fold((failure) {
      emit(
          state.copyWith(topCategoriesState: RequestState.error(failure.message)));
    }, (categories) {
      emit(state.copyWith(topCategoriesState: RequestState.success(categories)));
    });
  }
  Future<void>getSubCategories() async {
    emit(state.copyWith(subCategoriesState: const RequestState.loading()));
    final result = await homeRepo.getSubCategory();
    result.fold((failure) {
      emit(
          state.copyWith(subCategoriesState: RequestState.error(failure.message)));
    }, (subCategories) {
      emit(state.copyWith(subCategoriesState: RequestState.success(subCategories)));
    });
  }

}
