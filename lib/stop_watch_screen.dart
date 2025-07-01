import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  Timer? _timer;

  int _time = 0;
  bool _isRunnung = false;

  List<String> _lapTimes = [];

  void _clickButton() {
    _isRunnung = !_isRunnung;

    if (_isRunnung) {
      _start();
    } else {
      _pause();
    }
  }

  void _start() {
    _timer = Timer.periodic(Duration(microseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void _reset() {
    _isRunnung = false;
    _timer?.cancel();
    _lapTimes.clear();
    _time = 0;
  }

  void _pause() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int sec = _time ~/ 100;
    String hundredth = '${_time % 100}'
        .padLeft(2, '0'); // 2 자리로 표출하고 1자리면 앞에 (Left)0을 붙인다.

    return Scaffold(
      appBar: AppBar(
        title: Text('스톱워치'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$sec',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                hundredth,
              ),
            ],
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: ListView(
              children: [
                Center(
                  child: Text('111'),
                ),
                Center(
                  child: Text('222'),
                ),
                Center(
                  child: Text('333'),
                ),
                Center(
                  child: Text('444'),
                ),
                Center(
                  child: Text('555'),
                ),
                Center(
                  child: Text('666'),
                ),
                Center(
                  child: Text('777'),
                ),
                Center(
                  child: Text('888'),
                ),
              ],
            ),
          ),
          Spacer(), // 빈 공간을 차지
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.orange,
                onPressed: () {
                  setState(() {
                    _reset();
                  });
                },
                child: Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _clickButton();
                  });
                },
                child: _isRunnung ? Icon(Icons.pause) : Icon(Icons.play_arrow),
              ),
              FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
