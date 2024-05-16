import 'package:eataly/ConformBookingScreen/conforimbookingpage.dart';
import 'package:flutter/material.dart';

class SixTable extends StatefulWidget {
  const SixTable({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<SixTable> {
  int _numberOfSeats = 4;
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
            Text('6-Seat Table', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8), // Add some spacing
            // Image widget here
            Center(
              // Center widget to align the image horizontally
              child: SizedBox(
                width: 130.50,
                height: 130.50,
                child: Image.asset(
                  'assets/images/6seat.png', // Replace with your image asset path
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
                        if (_numberOfSeats < 6) {
                          // Check if the current number of seats is less than 4
                          _numberOfSeats++; // Only increment if less than 4
                        } else {
                          // Optional: Show a message if needed
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "Maximum of 6 seats can be booked on this table."),
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
                    title: Text(
                      "From Time",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF00B286)),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                _selectedFromTime.format(context),
                                style: TextStyle(color: Color(0xFF00B286)),
                              ),
                              Icon(
                                Icons.timer,
                                color: Color(0xFF00B286),
                              )
                            ],
                          ),
                        )),
                    onTap: () =>
                        _selectTime(context, true), // true for from time
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text(
                      "To Time",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(10.0), // Add round border
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(_selectedToTime.format(context)),
                            Icon(
                              Icons.timer,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () =>
                        _selectTime(context, false), // false for to time
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Conforimbookingpage()), // Replace YourNewScreen with the actual screen class you want to navigate to
                );
              },
              child: Container(
                height: 44,
                width: 326,
                decoration: BoxDecoration(
                  color: Color(0xFF00B286),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Confirm Booking',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
