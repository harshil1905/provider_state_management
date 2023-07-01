import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider_number/class_check_number_provider.dart';

class CheckNumber extends StatefulWidget {
  const CheckNumber({super.key});

  @override
  State<CheckNumber> createState() => _CheckNumberState();
}

class _CheckNumberState extends State<CheckNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Consumer<CheckNumberProvider>(
              builder: (context, obj, child) => TextField(
                controller: obj.txtNumbersController,
              ),
            ),
            Consumer<CheckNumberProvider>(
              builder: (context, obj, child) => MaterialButton(
                onPressed: () {
                  context
                      .read<CheckNumberProvider>()
                      .palindrom(int.parse(obj.txtNumbersController.text));
                },
                color: Colors.teal.shade100,
                child: const Text(' check palindrom nummber'),
              ),
            ),
            Consumer<CheckNumberProvider>(
              builder: (context, obj, child) => MaterialButton(
                onPressed: () {
                  context
                      .read<CheckNumberProvider>()
                      .amstrong(int.parse(obj.txtNumbersController.text));
                },
                color: Colors.teal.shade200,
                child: const Text('check amstrong number'),
              ),
            ),
            Consumer<CheckNumberProvider>(
              builder: (context, obj, child) => MaterialButton(
                onPressed: () {
                  context
                      .read<CheckNumberProvider>()
                      .prime(int.parse(obj.txtNumbersController.text));
                },
                color: Colors.teal.shade200,
                child: const Text('check prime number'),
              ),
            ),
            Consumer<CheckNumberProvider>(
              builder: (context, obj, child) => Column(
                children: [
                  Text(obj.resultpalindrom),
                  Text(obj.resultamstrong),
                  Text(obj.resultprinme),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
