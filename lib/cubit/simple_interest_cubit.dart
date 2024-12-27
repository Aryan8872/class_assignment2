import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubit extends Cubit<double>{

  SimpleInterestCubit():super(0);

  void simpleInterest(principal,time,rate){
    emit((principal*time*rate)/100);
  }

}