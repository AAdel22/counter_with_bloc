import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Bloc"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "0",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
