import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {

  ThemeCubit():super(lightTheme);

  static final ThemeData lightTheme = ThemeData().copyWith(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black,fontSize: 18))

  );

  static final ThemeData darkTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white,fontSize: 18))
  );

  void changeTheme(bool isDark){
    emit(isDark ? darkTheme : lightTheme);
  }

  

}