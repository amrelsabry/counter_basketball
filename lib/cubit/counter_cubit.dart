import 'package:counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CounterCubit extends Cubit<CounterState>{
  
  CounterCubit() : super(CounterState());

  void incramentScore({required String team ,required int buttonNumber} ){
    if (team == "A") {
     emit(CounterState(
      scoureTeamA: state.scoureTeamA + buttonNumber,
      scoureTeamB: state.scoureTeamB,
     ));
    }else{
      emit(CounterState(
        scoureTeamB: state.scoureTeamB + buttonNumber,
        scoureTeamA: state.scoureTeamA ,
      ));
    }
  }
  

  void reset(){
    emit(
      CounterState(
        scoureTeamA: state.scoureTeamA = 0,
        scoureTeamB:state.scoureTeamB = 0,
      ) 
      
    );
  }


}