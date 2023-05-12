import 'package:flutter/material.dart';
import 'package:flutter_reusable_widgets/flutter_reusable_widgets.dart';

import 'common_button_example.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CommonSafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reusable Widgets'),
        ),
        body: Padding(
          padding: defaultPadding,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CommonButton(
                onSubmit: () {
                  pagePusher(
                    context,
                    const CommonButtonExample(),
                  );
                },
                child: const Text('Buttons'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
