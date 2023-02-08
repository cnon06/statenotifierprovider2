import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStateNotifier extends StateNotifier<int> {
  MyStateNotifier(super.state);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
