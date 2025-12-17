class CounterState {
  
  int scoureTeamA ;
  int scoureTeamB ;

  CounterState({this.scoureTeamA = 0, this.scoureTeamB = 0});
}

class IncramentTeamAState extends CounterState {}

class IncramentTeamBState extends CounterState {}
