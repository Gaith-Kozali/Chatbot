import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
part 'introduction_state.dart';

class IntroductionCubit extends Cubit<IntroductionState> {
  IntroductionCubit() : super(IntroductionInitial());
  PageController pageController = PageController();
  int currentPage = 0;
  void nextPage() {
    pageController.nextPage(
        duration: const Duration(seconds: 2), curve: Curves.linear);
    currentPage++;
    emit(IntroductionInitial());
  }
}
