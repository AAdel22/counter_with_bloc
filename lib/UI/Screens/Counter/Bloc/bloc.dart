import 'package:counter_with_bloc/UI/Screens/Counter/Bloc/events.dart';
import 'package:counter_with_bloc/UI/Screens/Counter/Bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  int count = 0;

  @override
  Stream<CounterStates> mapEventToState(CounterEvents event) async* {
    if (event is IncreamentCounterValue) {
      yield* _changeValue("in");
    }
    if (event is DecreamentCounterValue) {
      yield* _changeValue("de");
    }
  }

  static CounterBloc get(BuildContext context) => BlocProvider.of(context);
  Stream<CounterStates> _changeValue(String s) async* {
    switch (s) {
      case "in":
        count++;
        break;
      case "de":
        if (count != 0) {
          count--;
        }

        break;
    }
    yield SuccessCounterState();
  }

  @override
  // TODO: implement initialState
  CounterStates get initialState => throw UnimplementedError();
}
