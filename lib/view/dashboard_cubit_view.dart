import 'package:class_assignment_2/cubit/dashboard_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubitView extends StatelessWidget {
  const DashboardCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Aryan Budhathoki class assignment 2"),
      backgroundColor: Colors.blue.shade400,
      titleTextStyle: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
      foregroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openAreaCircleView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.circle, size: 48,color: Colors.blue,),
                  Text('Circle area Cubit',style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openSimpleInterestView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                  Icon(Icons.calculate, size: 48,color: Colors.amber,),
                  Text('Simple interest Cubit',style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openProfileView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.person, size: 48,color: Colors.green,),
                  Text('Theme Cubit',style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
