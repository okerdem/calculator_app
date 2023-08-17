import 'package:calculator_app/functions.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  double _result = 0;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: ":3",
              ),
            ),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: null, child: Text("1")),
              ElevatedButton(onPressed: null, child: Text("2")),
              ElevatedButton(onPressed: null, child: Text("3")),
              ElevatedButton(onPressed: null, child: Text("+")),
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: null, child: Text("4")),
              ElevatedButton(onPressed: null, child: Text("5")),
              ElevatedButton(onPressed: null, child: Text("6")),
              ElevatedButton(onPressed: null, child: Text("-")),
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: null, child: Text("7")),
              ElevatedButton(onPressed: null, child: Text("8")),
              ElevatedButton(onPressed: null, child: Text("9")),
              ElevatedButton(onPressed: null, child: Text("x")),
            ],
          ),
          Row(
            children: [
              Spacer(),
              ElevatedButton(onPressed: null, child: Text("0")),
              Spacer(),
              ElevatedButton(onPressed: null, child: Text("/")),
            ],
          )
        ],
      ),
    );
  }
}
