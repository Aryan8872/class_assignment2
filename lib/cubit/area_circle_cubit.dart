import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCircleCubit extends Cubit<double>{

  AreaCircleCubit():super(0);

  void area(radius){
    emit((22/7)*radius*radius);
  }

}