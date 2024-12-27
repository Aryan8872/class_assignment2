import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestView extends StatelessWidget {
   SimpleInterestView({super.key});

  final TextEditingController principleController= TextEditingController() ;
  final TextEditingController timeController= TextEditingController() ;
  final TextEditingController rateController= TextEditingController() ;


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
            Text("Principle",style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),
            
            TextFormField(
            controller: principleController,
            decoration: InputDecoration(
              hintText:"Principle",
              prefixIcon: Icon(Icons.money),
              prefixIconColor:Colors.blue,
              border:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(7))
            ),
            
          ),
            SizedBox(height: 10,),

            Text("Time",style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),

            TextFormField(
              controller: timeController,
            decoration: InputDecoration(
              hintText:"Time / years",
              prefixIcon: Icon(Icons.watch),
              prefixIconColor:Colors.blue,
              border:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(7))
            ),
            
          ),

            Text("Rate",style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),

            TextFormField(
            controller: rateController,
            decoration: InputDecoration(
              hintText:"Rate / per year",
              prefixIcon: Icon(Icons.rate_review),
              prefixIconColor:Colors.blue,
              border:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(7))
            ),
            
          ),

          SizedBox(height: 10,),


          Center(
            child: ElevatedButton(onPressed: (){
              context.read<SimpleInterestCubit>().simpleInterest(int.tryParse(principleController.text), int.tryParse(timeController.text), int.tryParse(rateController.text));
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.blue)
            
            ),
             child: Text("Calculate Interest"))
            
            
            ),

             SizedBox(height: 10,),

             Center(
              child: BlocBuilder<SimpleInterestCubit,double>(
                builder:(context, state) =>Text("Simple Interest: $state",style: TextStyle(fontSize: 17,color: Colors.black),) ,
                 )
              )
          ]
        ),
      ),
    );
  }
}