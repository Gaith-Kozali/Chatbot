part of 'setting_bloc.dart';

@immutable
abstract class SettingState {}

class SettingInitial extends SettingState {}

class ChangeThemeState extends SettingState {
  ChangeThemeState({required this.theme});
  AppTheme theme;
}
