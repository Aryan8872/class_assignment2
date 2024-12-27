import 'package:class_assignment_2/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aryan Budhathoki class assignment 2"),
        backgroundColor: Colors.blue.shade400,
        titleTextStyle: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        foregroundColor: Colors.white,
        actions: [
          Switch(
            value: context.read<ThemeCubit>().state == ThemeCubit.darkTheme,
            onChanged: (isDark) {
              context.read<ThemeCubit>().changeTheme(isDark);
            },
          ),
        ],
      ),
      body: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return Center(
            child: Text(
              "theme page",
              style: theme.textTheme.bodyLarge, 
            ),
          );
        },
      ),
    );
  }
}
