part of 'setting_bloc.dart';

@immutable
abstract class SettingEvent {}

class ChangeThemeEvent extends SettingEvent {
  ChangeThemeEvent({required this.theme});
  AppTheme theme;
}
