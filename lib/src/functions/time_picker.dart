import 'package:flutter/material.dart';

Future<TimeOfDay?> commonTimePicker({
  required BuildContext context,
  required String pickedTime,
  bool use24HourFormat = true,
}) async {
  TimeOfDay? timeOfDay;
  if (pickedTime.isNotEmpty) {
    List<String> list = pickedTime.split(':');
    int hour = int.parse(list[0]);
    int minute = int.parse(
        use24HourFormat ? list[1] : list[1].substring(0, list[1].length - 2));
    timeOfDay = TimeOfDay(hour: hour, minute: minute);
    print(timeOfDay);
  }
  final pick = showTimePicker(
      context: context,
      initialEntryMode: TimePickerEntryMode.input,
      initialTime: timeOfDay ?? TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            alwaysUse24HourFormat: use24HourFormat,
          ),
          child: child!,
        );
      });

  return pick;
}
