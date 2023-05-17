import 'package:flutter/material.dart';
import 'package:flutter_reusable_widgets/flutter_reusable_widgets.dart';

class DateTimePickerExample extends StatefulWidget {
  const DateTimePickerExample({super.key});

  @override
  State<DateTimePickerExample> createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  String _date = '';
  String _time24HourFormat = '';
  String _time12HourFormat = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Date Time Picker Example',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonButton(
                  onSubmit: () async {
                    final date = await commonDatePicker(
                        context: context, pickedDate: _date);
                    _date = date.toString().substring(0, 10);
                    setState(() {});
                  },
                  child: Text(
                    _date.isEmpty ? 'Date Picker' : _date,
                  ),
                ),
                20.hGap,
                Row(
                  children: [
                    CommonOutlinedButton(
                      onSubmit: () async {
                        final date = await commonDatePicker(
                            context: context, pickedDate: '');
                        _date = date.toString().substring(0, 10);
                        setState(() {});
                      },
                      child: Text(
                        _date.isEmpty
                            ? 'You don\'t want your lastest picked date'
                            : _date,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            15.vGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonButton(
                  onSubmit: () async {
                    final time = await commonTimePicker(
                        context: context,
                        pickedTime: _time12HourFormat,
                        use24HourFormat: false);
                    _time12HourFormat = time!.format(context);
                    setState(() {});
                  },
                  child: Text(
                    _time12HourFormat.isEmpty
                        ? 'Time Picker 12 hr format'
                        : _time12HourFormat,
                  ),
                ),
                15.hGap,
                CommonOutlinedButton(
                  onSubmit: () async {
                    final time = await commonTimePicker(
                        context: context,
                        pickedTime: '',
                        use24HourFormat: false);
                    _time12HourFormat = time!.format(context);
                    setState(() {});
                  },
                  child: Text(
                    _time12HourFormat.isEmpty
                        ? 'You don\'t want your latest picked time'
                        : _time12HourFormat,
                  ),
                ),
              ],
            ),
            15.vGap,
            CommonOutlinedButton(
              onSubmit: () async {
                final time = await commonTimePicker(
                    context: context, pickedTime: _time24HourFormat);
                _time24HourFormat = time.toString().substring(10, 15);
                setState(() {});
              },
              child: Text(
                _time24HourFormat.isEmpty
                    ? 'Time Picker 24 hr format'
                    : _time24HourFormat,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
