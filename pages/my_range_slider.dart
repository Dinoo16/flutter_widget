import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues _currentValues = const RangeValues(10, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Range Slider"),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue.shade200,
          Colors.teal.shade200,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select a range: ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "End",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            RangeSlider(
              values: _currentValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(_currentValues.start.round().toString(),
                  _currentValues.end.round().toString()),
              activeColor: Colors.white,
              inactiveColor: Colors.blueGrey,
              onChanged: (RangeValues values) {
                setState(() {
                  _currentValues = values;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "The selected range is: ${_currentValues.start.round().toString()} to ${_currentValues.end.round().toString()}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ));
              },
              child: Text(
                "Confirm Selected",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue.shade200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
