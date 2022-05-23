import 'package:flutter/material.dart';


class TestReorderable extends StatefulWidget {
   TestReorderable({Key? key}) : super(key: key);

  @override
  State<TestReorderable> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TestReorderable> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      body: ReorderableListView(
        padding: const EdgeInsets.all(40),
        children: <Widget>[
          for (int index = 0; index < _items.length; index += 1)
            ListTile(
              key: Key('$index'),
              tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
              title: Text('Item ${_items[index]}'),
            ),
        ],
        onReorder: (int oldIndex, int newIndex) {
          print('newindex={$newIndex}\n oldindex={$oldIndex}');
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            print('newindex={$newIndex}');
            final int item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
