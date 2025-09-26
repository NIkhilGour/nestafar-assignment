import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.dark));

  void toggleTheme() {
    emit(
      state.themeMode == ThemeMode.light
          ? ThemeState(themeMode: ThemeMode.dark)
          : ThemeState(themeMode: ThemeMode.light),
    );
  }
}
