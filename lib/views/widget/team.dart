import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:counter_app/cubit/counter_state.dart';
import 'package:counter_app/views/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Team extends StatelessWidget {
  const Team({super.key, required this.text, required this.isTeamA});
  final String text;
    final bool isTeamA;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit , CounterState>(
      builder: (context, state) {

            final score = isTeamA ? state.scoureTeamA :  state.scoureTeamB ;

        return Column(
          children: [
            Text(text, style: TextStyle(fontSize: 38)),

            const SizedBox(height: 16),

            Text(
             "$score",
             style: TextStyle(fontSize: 140)),

            CustomButton(name: "Add 1 Points", ontap: () {
              context.read<CounterCubit>().incramentScore(
                team:isTeamA ? "A" : "B", 
                buttonNumber: 1);
            }),
            const SizedBox(height: 30),
            CustomButton(name: "Add 2 points", ontap: () {
                context.read<CounterCubit>().incramentScore(team:isTeamA ? "A" : "B",  buttonNumber: 2);
            }),
            const SizedBox(height: 30),
            CustomButton(name: "Add 3 Points", ontap: () {
                context.read<CounterCubit>().incramentScore(team: isTeamA ? "A" : "B", buttonNumber: 3);
            }),

            
          ],
        );
      },
    );
  }
}
