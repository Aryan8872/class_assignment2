
import 'package:class_assignment_2/cubit/area_circle_cubit.dart';
import 'package:class_assignment_2/cubit/dashboard_cubit.dart';
import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/cubit/theme_cubit.dart';
import 'package:class_assignment_2/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>SimpleInterestCubit()),
        BlocProvider(create: (context)=>AreaCircleCubit()),
        BlocProvider(create: (context)=>ThemeCubit()),
        BlocProvider(create: (context)=>DashboardCubit(
          context.read<SimpleInterestCubit>(),
          context.read<AreaCircleCubit>(),
          context.read<ThemeCubit>()
          ))
      ],
      child: BlocBuilder<ThemeCubit,ThemeData>(
        builder: (context, theme) {
         return MaterialApp(
          home: DashboardCubitView(),
          debugShowCheckedModeBanner: false,
          theme: theme,
          );
        }
      ),
    );
  }
}
