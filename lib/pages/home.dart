import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/bloc/counter_event.dart';

class HomePage extends StatelessWidget {
  CounterBloc counterB = CounterBloc();
  int value = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COUNTER APPS'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, int>(
              bloc: counterB,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      counterB.add(DecrementCounter(value));
                    },
                    icon: Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      counterB.add(IncrementCounter(value));
                    },
                    icon: Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
