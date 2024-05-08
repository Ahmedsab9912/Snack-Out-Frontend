import 'package:flutter/material.dart';

class TwoTable extends StatefulWidget {
  const TwoTable({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<TwoTable> {
  int _numberOfSeats = 2;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedFromTime = const TimeOfDay(hour: 16, minute: 00);
  TimeOfDay _selectedToTime = const TimeOfDay(hour: 19, minute: 00);

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isFromTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isFromTime ? _selectedFromTime : _selectedToTime,
    );
    if (picked != null) {
      setState(() {
        if (isFromTime) {
          _selectedFromTime = picked;
        } else {
          _selectedToTime = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make a Booking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('2-Seat Table', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8), // Add some spacing
            // Image widget here
            Center(
              // Center widget to align the image horizontally
              child: SizedBox(
                width: 130.50,
                height: 130.50,
                child: Image.asset(
                  'assets/images/2seat.png', // Replace with your image asset path
                  fit: BoxFit
                      .cover, // This makes sure the image covers the container area
                ),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (_numberOfSeats > 1) _numberOfSeats--;
                    });
                  },
                ),
                Text('$_numberOfSeats'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(
                      () {
                        if (_numberOfSeats < 2) {
                          // Check if the current number of seats is less than 4
                          _numberOfSeats++; // Only increment if less than 4
                        } else {
                          // Optional: Show a message if needed
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "Maximum of 2 seats can be booked on this table."),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: const Text("Pick a Date"),
              subtitle: Text("${_selectedDate.toLocal()}".split(' ')[0]),
              onTap: () => _selectDate(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text("From Time"),
                    subtitle: Text(_selectedFromTime.format(context)),
                    onTap: () =>
                        _selectTime(context, true), // true for from time
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text("To Time"),
                    subtitle: Text(_selectedToTime.format(context)),
                    onTap: () =>
                        _selectTime(context, false), // false for to time
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle booking confirmation logic
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                textStyle: const TextStyle(fontSize: 18.0),
              ),
              child: const Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
