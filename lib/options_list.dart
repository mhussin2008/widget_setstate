import 'package:flutter/material.dart';
//import '../Data/data.dart';

class OptionsList extends StatelessWidget {
  const OptionsList( {Key? key, required this.options, required this.update, required this.selected, required this.pNum}) : super(key: key);
  final List<List<String>> options;
  final String selected;
  final void Function(String) update;
  final int pNum;

  @override
  Widget build(BuildContext context) {
    print(' I am building options page'+pNum.toString());
    return Column(
        children: options[pNum].map((e) =>
            ListTile(
              title:  Text(e),
              leading: Radio<String>(
                value: e,
                groupValue: selected,
                onChanged: (value) {
                 update(value!);
                  },
              ),
              textColor: Colors.tealAccent,
            )
        ).toList()
    );

  }
}
