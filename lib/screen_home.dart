import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http_sample_numbers_api/apis.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _numberInputController = TextEditingController();

  String _resultText = '-----';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _numberInputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter a Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final _num = _numberInputController.text;
                final _data = await getNumberFacts(number: _num);
                //print(_data.text);
                setState(() {
                  _resultText = _data.text.toString();
                });
              },
              child: const Text('Get Result'),
            ),
            Text(_resultText)
          ],
        ),
      ),
    );
  }
}
