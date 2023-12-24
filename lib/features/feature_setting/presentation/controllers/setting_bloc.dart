import 'package:bloc/bloc.dart';
import 'package:cr/core/constants/app_theme.dart';
import 'package:meta/meta.dart';

part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingInitial()) {
    on<SettingEvent>((event, emit) {
      if(event is ChangeThemeEvent){
        emit(ChangeThemeState(theme: event.theme));
      }
    });
  }
}
