import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스탑워치'),
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
                '0',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                '00',
              ),
            ],
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: ListView(
              children: [
                Center(child: Text('111'),),
                Center(child: Text('222'),),
                Center(child: Text('333'),),
                Center(child: Text('444'),),
                Center(child: Text('555'),),
                Center(child: Text('666'),),
                Center(child: Text('777'),),
                Center(child: Text('888'),),
              ],
            ),
          ),
          Spacer(), // 빈 공간을 차지
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.orange,
                onPressed: () {},
                child: Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.play_arrow),
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
