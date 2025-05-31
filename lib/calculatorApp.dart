import 'dart:math';

import 'package:calculator/widget/button.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = '0';
  String _input = '0';
  String _ope = '';
  double num1 = 0.0;
  double num2 = 0.0;

  List<String> _history = [];

  void buttonPress(String value) {
    setState(() {
      if (value == 'C') {
        _input = '0';
        _output = '0';
        _ope = '';
        num1 = 0.0;
        num2 = 0.0;
      } else if (value == 'B') {
        if (_input.length > 1) {
          _input = _input.substring(0, _input.length - 1);
        } else {
          _input = '0';
        }
        _output = _input;
      } else if (value == '=') {
        num2 = double.tryParse(_input) ?? 0.0;
        String expression = "$num1 $_ope $num2";
        if (_ope == '+') {
          _output = (num1 + num2).toString();
        } else if (_ope == '-') {
          _output = (num1 - num2).toString();
        } else if (_ope == '*') {
          _output = (num1 * num2).toString();
        } else if (_ope == '/') {
          _output = num2 != 0 ? (num1 / num2).toString() : 'Error';
        } else if (_ope == '%') {
          _output = num2 != 0 ? (num1 % num2).toString() : 'Error';
        }
        _input = _output;
        _ope = '';

        if (_output != 'Error') {
          _history.add("$expression = $_output");
        }
      } else if (value == 'rt') {
        // Square root operation on current input
        double currentValue = double.tryParse(_input) ?? 0.0;
        if (currentValue < 0) {
          _output = 'Error';
          _input = '0';
        } else {
          double result = sqrt(currentValue);
          _output = result.toString();
          _input = _output;

          // Add sqrt expression to history
          _history.add("rt($currentValue) = $_output");
        }
        _ope = '';
      } else if (value == '+' || value == '-' || value == '*' || value == '/' || value == '%') {
        num1 = double.tryParse(_input) ?? 0.0;
        _ope = value;
        _input = '0';
      } else if (value == '.') {
        if (!_input.contains('.')) {
          _input += '.';
          _output = _input;
        }
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    }
    );
  }


  void _clearHistory() {
    setState(() {
      _history.clear();
    });
  }

  void _deleteHistoryItem(int index) {
    setState(() {
      _history.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Calculator App"),
              accountEmail: Text("Version 1.0.0"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.calculate, size: 30, color: Colors.deepPurple),
              ),
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
            Expanded(
              child: _history.isEmpty
                  ? const Center(
                child: Text(
                  "No history yet",
                  style: TextStyle(color: Colors.white54),
                ),
              )
                  : ListView.builder(
                itemCount: _history.length,
                itemBuilder: (context, index) {
                  final item = _history[index];
                  return ListTile(
                    title: Text(
                      item,
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () => _deleteHistoryItem(index),
                    ),
                  );
                },
              ),
            ),
            if (_history.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton.icon(
                  onPressed: _clearHistory,
                  icon: const Icon(Icons.delete_forever),
                  label: const Text("Clear History"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    minimumSize: const Size.fromHeight(40),
                  ),
                ),
              ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Text(
                  _output,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // Buttons rows
          Row(
            children: [
              buildButton(text: 'C', onClick: () => buttonPress('C'), color: Colors.redAccent),
              buildButton(text: 'B', onClick: () => buttonPress('B'), color: Colors.orangeAccent),
              buildButton(text: '%', onClick: () => buttonPress('%'), color: Colors.orangeAccent),
              buildButton(text: '/', onClick: () => buttonPress('/'), color: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              buildButton(text: '7', onClick: () => buttonPress('7')),
              buildButton(text: '8', onClick: () => buttonPress('8')),
              buildButton(text: '9', onClick: () => buttonPress('9')),
              buildButton(text: '*', onClick: () => buttonPress('*'), color: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              buildButton(text: '4', onClick: () => buttonPress('4')),
              buildButton(text: '5', onClick: () => buttonPress('5')),
              buildButton(text: '6', onClick: () => buttonPress('6')),
              buildButton(text: '-', onClick: () => buttonPress('-'), color: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              buildButton(text: '1', onClick: () => buttonPress('1')),
              buildButton(text: '2', onClick: () => buttonPress('2')),
              buildButton(text: '3', onClick: () => buttonPress('3')),
              buildButton(text: '+', onClick: () => buttonPress('+'), color: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              buildButton(text: '0', onClick: () => buttonPress('0')),
              buildButton(text: '.', onClick: () => buttonPress('.')),
              buildButton(text: '=', onClick: () => buttonPress('='), color: Colors.green),
              buildButton(text: 'rt', onClick: () => buttonPress('rt'), color: Colors.orangeAccent),

            ],
          ),
        ],
      ),
    );
  }
}
