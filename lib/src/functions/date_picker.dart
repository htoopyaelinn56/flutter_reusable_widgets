import 'package:flutter/material.dart';

Future<DateTime> commonDatePicker({
  required BuildContext context,
  required String pickedDate,
  int startDate = 1920,
  int endDate = 3000,
}) async {
  DateTime? date;
  if (pickedDate.isNotEmpty) {
    date = DateTime.parse(pickedDate);
  }

  final picker = await showDatePicker(
    context: context,
    initialEntryMode: DatePickerEntryMode.calendar,
    initialDate: pickedDate.isEmpty ? DateTime.now() : date!,
    firstDate: DateTime(startDate),
    lastDate: DateTime(
      endDate,
    ),
    builder: (context, child) {
      return child!;
    },
  );
  return picker!;
}
