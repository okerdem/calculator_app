import 'package:calculator_app/functions.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  double _result = 0;
  String _textField = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ":3",
                  labelText: _textField,
                  labelStyle: TextStyle(
                    fontSize: 25,
                  )),
            ),
          ),
          Row(
            children: [
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textField += "1";
                    });
                  },
                  child: Text("1")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textField += "2";
                    });
                  },
                  child: Text("2")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textField += "3";
                    });
                  },
                  child: Text("3")),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade100,
                ),
                child: Text(
                  "+",
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(onPressed: null, child: Text("4")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(onPressed: null, child: Text("5")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(onPressed: null, child: Text("6")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade100,
                    ),
                    child: Text(
                      "-",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    )),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(onPressed: null, child: Text("7")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(onPressed: null, child: Text("8")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(onPressed: null, child: Text("9")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade100,
                    ),
                    child: Text(
                      "x",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    )),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(onPressed: null, child: Text("0")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade100,
                  ),
                  child: Text(
                    "=",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade100,
                    ),
                    child: Text(
                      "/",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    )),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
