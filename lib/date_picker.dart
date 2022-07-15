import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime date = DateTime(2022, 12, 28);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${date.year}/${date.month}/${date.day}',
              style: const TextStyle(fontSize: 32.0),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              child: const Text('Select Date'),
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2023),
                );
                // if 'CANCEL' => null
                if (newDate == null) return;
                // if 'OK' => DateTime
                setState(() {
                  date = newDate;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
