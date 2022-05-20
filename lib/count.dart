import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  final void Function() onCountSelected;
  final Function(int) onCountChanged;

  Count({
    required this.count,
    required this.onCountChanged,
    required this.onCountSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            onCountChanged(1);
          },
        ),
        ElevatedButton(
          child: Text("$count"),
          onPressed: () => onCountSelected(),
        ),
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            onCountChanged(-1);
          },
        ),
      ],
    );
  }
}