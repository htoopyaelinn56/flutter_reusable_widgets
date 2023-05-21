import 'package:flutter/material.dart';

Future<DateTime> pickDate({
  required BuildContext context,
  String pickedDate = '',
  int startYear = 1920,
  int endYear = 3000,
}) async {
  DateTime? date;
  if (pickedDate.isNotEmpty) {
    date = DateTime.parse(pickedDate);
  }

  final picker = await showDatePicker(
    context: context,
    initialEntryMode: DatePickerEntryMode.calendar,
    initialDate: pickedDate.isEmpty ? DateTime.now() : date!,
    firstDate: DateTime(startYear),
    lastDate: DateTime(
      endYear,
    ),
    builder: (context, child) {
      return child!;
    },
  );
  return picker!;
}
