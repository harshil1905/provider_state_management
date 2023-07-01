import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider_demo/counter_provider.dart';

class CounterDemo extends StatefulWidget {
  const CounterDemo({super.key});

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().incrment();
                },
                child: const Icon(Icons.add),
              ),
              Selector<CounterProvider, int>(
                builder: (context, value, child) {
                  return Text(
                    value.toString(),
                  );
                },
                selector: (context, obj) => obj.count,
              ),
              // Consumer<CounterProvider>(
              //   builder: (context, obj, child) {
              //     print('first Consumer Call');
              //     return Text(
              //       obj.count.toString(),
              //     );
              //   },
              // ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().incrment2();
                },
                child: const Icon(Icons.add),
              ),
              Selector<CounterProvider, int>(
                  builder: (context, value, child) {
                    return Text(value.toString());
                  },
                  selector: (context, obj) => obj.count1),
              // Consumer<CounterProvider>(
              //   builder: (context, obj, child) {
              //     return Text(obj.count1.toString());
              //   },
              // ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement2();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}
