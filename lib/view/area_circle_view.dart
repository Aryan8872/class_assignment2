import 'package:class_assignment_2/cubit/area_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCircleView extends StatelessWidget {
   AreaCircleView({super.key});

  final TextEditingController circleController= TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Aryan Budhathoki class assignment 2"),
      backgroundColor: Colors.blue.shade400,
      titleTextStyle: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
      foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Circle Radius",style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),
            TextFormField(
              controller: circleController,
      
            decoration: InputDecoration(
              hintText:"Radius",
              prefixIcon: Icon(Icons.circle),
              prefixIconColor:Colors.blue,
              border:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(7))
            ),
            
          ),
            SizedBox(height: 10,),

          Center(
            child: ElevatedButton(onPressed: (){
              context.read<AreaCircleCubit>().area(int.tryParse(circleController.text));
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.blue)
            
            ),
             child: Text("Calculate Area"))
            
            
            ),

             SizedBox(height: 10,),

             Center(
              child: BlocBuilder<AreaCircleCubit,double>(builder:(context, state) => Text("Area: $state",style: TextStyle(fontSize: 17),),)
              
              )
          ]
        ),
      ),
    );
  }
}