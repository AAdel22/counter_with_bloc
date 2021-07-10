import 'package:flutter/cupertino.dart';

@immutable
abstract class CounterEvents {
  const CounterEvents();
}

class IncreamentCounterValue extends CounterEvents {}

class DecreamentCounterValue extends CounterEvents {}
