import 'package:flutter/cupertino.dart';

@immutable
abstract class CounterStates {
  const CounterStates();
}

class InitialCounterState extends CounterStates {}

class SuccessCounterState extends CounterStates {}
