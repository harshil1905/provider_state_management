import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'class_form_example_providre.dart';

class RadioCheckBoxExample extends StatefulWidget {
  const RadioCheckBoxExample({super.key});

  @override
  State<RadioCheckBoxExample> createState() => _RadioCheckBoxExampleState();
}

class _RadioCheckBoxExampleState extends State<RadioCheckBoxExample> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('I am Re-Build');
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer<RadioCheckexampleBoxProvider>(
                builder: (context, obj, child) => Column(
                  children: [
                    TextField(
                      controller: obj.firstrName,
                    ),
                    TextField(
                      controller: obj.secondName,
                    ),
                    TextField(
                      controller: obj.thirdName,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Gender : '),
                        Radio(
                          value: obj.male,
                          groupValue: obj.gender,
                          onChanged: (value) {
                            context
                                .read<RadioCheckexampleBoxProvider>()
                                .checkGenderEx(value!);
                          },
                        ),
                        const Text('Male'),
                        Radio(
                          value: obj.female,
                          groupValue: obj.gender,
                          onChanged: (value) {
                            context
                                .read<RadioCheckexampleBoxProvider>()
                                .checkGenderEx(value!);
                          },
                        ),
                        const Text('Female'),
                      ],
                    ),
                  ],
                ),
              ),
              Consumer<RadioCheckexampleBoxProvider>(
                builder: (context, obj, child) => Row(
                  children: [
                    Slider(
                      activeColor: Colors.black,
                      divisions: 30,
                      thumbColor: Colors.blue,
                      label: 'value',
                      min: 0,
                      max: 100,
                      value: obj.value1,
                      onChanged: (value) {
                        context
                            .read<RadioCheckexampleBoxProvider>()
                            .sliderEx(mounted);
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Hobby:'),
                      Selector<RadioCheckexampleBoxProvider, bool>(
                        selector: (context, obj) => obj.isCricket,
                        builder: (context, isCricket, child) {
                          return Checkbox(
                            value: isCricket,
                            onChanged: (value) {
                              context
                                  .read<RadioCheckexampleBoxProvider>()
                                  .checkCricketEx(value!);
                            },
                          );
                        },
                      ),
                      const Text('Cricket'),
                      Selector<RadioCheckexampleBoxProvider, bool>(
                        selector: (context, obj) => obj.isFootBall,
                        builder: (context, isFootball, child) => Checkbox(
                          value: isFootball,
                          onChanged: (value) {
                            context
                                .read<RadioCheckexampleBoxProvider>()
                                .checkFootballEx(value!);
                          },
                        ),
                      ),
                      const Text('FootBall')
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  context.read<RadioCheckexampleBoxProvider>().showDataEx();
                },
                child: const Text('Submit'),
              ),
              Consumer<RadioCheckexampleBoxProvider>(
                builder: (context, obj, child) => obj.isShowData == true
                    ? Container(
                        height: 100,
                        width: 200,
                        color: Colors.cyan,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(obj.firstrName.text),
                            Text(obj.secondName.text),
                            Text(obj.thirdName.text),
                            Text(obj.gender),
                            Text(obj.hobby.toString()),
                          ],
                        ),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
