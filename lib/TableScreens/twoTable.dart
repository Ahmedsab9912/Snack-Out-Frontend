import 'package:eataly/ConformBookingScreen/conforimbookingpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TwoTable extends StatefulWidget {
  const TwoTable({super.key});

  @override
  _TwoTableState createState() => _TwoTableState();
}

class _TwoTableState extends State<TwoTable> {
  int _numberOfSeats = 0;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedFromTime = const TimeOfDay(hour: 16, minute: 00);
  TimeOfDay _selectedToTime = const TimeOfDay(hour: 19, minute: 00);
  bool _isLoading = false;

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

  Future<String?> _getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  Future<void> _confirmBooking() async {
    setState(() {
      _isLoading = true;
    });

    final startDateTime = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedFromTime.hour,
      _selectedFromTime.minute,
    );
    final endDateTime = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedToTime.hour,
      _selectedToTime.minute,
    );

    final accessToken = await _getAccessToken();
    if (accessToken == null) {
      setState(() {
        _isLoading = false;
      });
      print('Access token not found.');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Access token not found. Please log in again.'),
        ),
      );
      return;
    }

    try {
      final response = await http.post(
        Uri.parse('http://192.168.0.102/reservations'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        body: jsonEncode(<String, dynamic>{
          'userId': 5, // Replace with actual userId
          'restaurantId': 2, // Replace with actual restaurantId
          'date': _selectedDate.toIso8601String(),
          'numberOfGuests': _numberOfSeats,
          'status': 'completed',
          'startTime': startDateTime.toIso8601String(),
          'endTime': endDateTime.toIso8601String(),
        }),
      );

      setState(() {
        _isLoading = false;
      });
      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Reservation Created Successfully '),
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Conforimbookingpage(),
          ),
        );
      } else {
        print('Failed to create a reservation. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to create a reservation. Please try again.'),
          ),
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred. Please try again later.'),
        ),
      );
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (_numberOfSeats > 0) _numberOfSeats--;
                    });
                  },
                ),
                Text('$_numberOfSeats'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(
                          () {
                        if (_numberOfSeats < 50) {
                          _numberOfSeats++;
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "Maximum of 50 seats can be booked on this table."),
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
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
                      ),
                    ),
                    onTap: () => _selectTime(context, true),
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
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
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
                    onTap: () => _selectTime(context, false),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: _isLoading ? null : _confirmBooking,
              child: Container(
                height: 44,
                width: 326,
                decoration: BoxDecoration(
                  color: _isLoading ? Colors.grey : Color(0xFF00B286),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: _isLoading
                      ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromARGB(255, 255, 255, 255)),
                  )
                      : Text(
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
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
