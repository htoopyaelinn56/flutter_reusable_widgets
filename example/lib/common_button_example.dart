import 'package:flutter/material.dart';
import 'package:flutter_reusable_widgets/flutter_reusable_widgets.dart';
import 'package:flutter_reusable_widgets/src/extensions/gap.dart';
import 'constants.dart';

class CommonButtonExample extends StatelessWidget {
  const CommonButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonSafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Common Button Example'),
        ),
        body: Padding(
          padding: defaultPadding,
          child: Column(
            children: [
              const Text('Common Button'),
              const Divider(),
              CommonButton(
                onSubmit: () {},
                child: const Text('Default one'),
              ),
              15.vGap,
              CommonButton(
                onSubmit: () {},
                isLoading: true,
                child: const Text('Loading'),
              ),
              15.vGap,
              const CommonButton(
                onSubmit: null,
                child: Text('Disabled'),
              ),
              15.vGap,
              CommonButton(
                onSubmit: () {},
                width: 300,
                height: 50,
                borderRadius: 15,
                bgColor: Colors.purple,
                child: const Text('with size and color and border radius'),
              ),
              15.vGap,
              CommonButton.square(
                onSubmit: () {},
                child: const Icon(Icons.add),
              ),
              15.vGap,
              CommonButton.circle(
                onSubmit: () {},
                size: 100,
                bgColor: Colors.red,
                child: const Icon(Icons.add),
              ),
              15.vGap,
              const Text('Common Outlined Button'),
              const Divider(),
              CommonOutlinedButton(
                onSubmit: () {},
                fgColor: Colors.red,
                child: const Text('Click Outlined button'),
              ),
              15.vGap,
              const CommonOutlinedButton(
                onSubmit: null,
                fgColor: Colors.red,
                child: Text('Can\'t Click Disabled Outlined button'),
              ),
              15.vGap,
              CommonOutlinedButton(
                onSubmit: () {},
                isLoading: true,
                fgColor: Colors.pink,
                child: const Text('Click Outlined button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
