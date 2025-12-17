import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:counter_app/views/widget/custom_button.dart';
import 'package:counter_app/views/widget/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
    
    
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Team(
                      text: "Team A",
                      isTeamA: true,
                    ),
        
                    const VerticalDivider(
                      indent: 100,
                      endIndent: 100,
                      thickness: 2,
                    ),
        
                    Team(
                      text:  "Team B",
                      isTeamA: false,
                    ),
                
                  ],
                ),
              ),
            ),
        
            SizedBox(
              width: 250,
              height: 70,
              child: CustomButton(
                name: "Reset",
                 ontap: (){
                  context.read<CounterCubit>().reset();
                 },
              )),
            const SizedBox(height: 150,)
        
          ],
        ),
    );
  }
}