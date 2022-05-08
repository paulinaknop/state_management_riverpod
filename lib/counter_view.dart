import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod/counter_view_model.dart';

class CounterView extends ConsumerWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(stateProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("State management"),
        ),
        body: Center(
          child: Text(
            provider.counter.toString(),
            style: TextStyle(fontSize: 50.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            provider.add();
          },
        ),
      ),
    );
  }
}
