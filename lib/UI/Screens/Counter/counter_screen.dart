import 'dart:developer';

import 'package:counter_with_bloc/UI/Screens/Counter/Bloc/bloc.dart';
import 'package:counter_with_bloc/UI/Screens/Counter/Bloc/events.dart';
import 'package:counter_with_bloc/UI/Screens/Counter/Bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (BuildContext context) => CounterBloc(),
      child: BlocConsumer<CounterBloc, CounterStates>(
        listener: (context, state) {
          if (state is SuccessCounterState) {
            print("Success Counter bloc");
          }
        },
        builder: (context, state) {
          int count = CounterBloc.get(context).count;
          return Scaffold(
            appBar: AppBar(
              title: Text("Counter Bloc"),
              backgroundColor: Colors.teal,
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CounterBloc.get(context).add(IncreamentCounterValue());
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
