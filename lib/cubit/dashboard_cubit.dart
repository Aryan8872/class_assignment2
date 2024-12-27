
import 'package:class_assignment_2/cubit/area_circle_cubit.dart';
import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/cubit/theme_cubit.dart';
import 'package:class_assignment_2/view/area_circle_view.dart';
import 'package:class_assignment_2/view/theme_view.dart';
import 'package:class_assignment_2/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void>{

  final SimpleInterestCubit _simpleInterestCubit;
  final AreaCircleCubit _areaCircleCubit;
  final ThemeCubit _profilePageCubit;

  DashboardCubit(
    this._simpleInterestCubit,
    this._areaCircleCubit,
    this._profilePageCubit
  ): super(null);

  void openSimpleInterestView(BuildContext context){
    Navigator.push(
      context, MaterialPageRoute(builder: (_)=>BlocProvider.value(value: _simpleInterestCubit,child: SimpleInterestView(),)      ),
      );
  }

  void openAreaCircleView(BuildContext context){
    Navigator.push(context,
     MaterialPageRoute(builder: (_)=>BlocProvider.value(value: _areaCircleCubit,child: AreaCircleView(),))
     );

  }

  void openProfileView(BuildContext context){
    Navigator.push(context,
     MaterialPageRoute(builder: (_)=>BlocProvider.value(value: _profilePageCubit,child: ThemeView(),))
     );

  }
}