import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/components/my_splash_screen.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/themes/dark_mode.dart';
import 'package:food_delivery/themes/light_mode.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:food_delivery/themes/theme_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => RestaurantCubit()),
      ],
      child: const myApp(),
    ),
  );
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const MySplashScreen(),
          darkTheme: darkMode,
          theme: lightMode,
          themeMode: state.themeMode,
        );
      },
    );
  }
}
