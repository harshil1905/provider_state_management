import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/Form_example_provider/class_form_example_providre.dart';
import 'package:provider_state_management/provider/provider_number/check_number.dart';
import 'package:provider_state_management/provider/provider_number/class_check_number_provider.dart';

void main() {
  runApp(const StateManagementDemo());
}

class StateManagementDemo extends StatelessWidget {
  const StateManagementDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RadioCheckexampleBoxProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckNumberProvider(),
        )
      ],
      child: const MaterialApp(
        home: CheckNumber(),
      ),
    );
  }
}
