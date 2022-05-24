import 'package:flutter/material.dart';


class TestWrap extends StatefulWidget {
  const TestWrap({Key? key}) : super(key: key);

  @override
  State<TestWrap> createState() => _TestWrapState();
}

class _TestWrapState extends State<TestWrap> {
  int buttonsCount=1;

  void Update(int value){
    setState((){
    buttonsCount+=value;
      if(buttonsCount<0){buttonsCount=0;}
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: List<ElevatedButton>.generate(buttonsCount,
                  (index) => ElevatedButton(onPressed: (){}, child: Text('Im Button number $index '))),

        ),
      ),

      bottomNavigationBar  : ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        buttonHeight: 20,
        children: [
          IconButton(onPressed: (){Update(1);},
          icon: const Icon(Icons.add)),
          IconButton(onPressed: (){Update(-1);},
              icon: const Icon(Icons.delete)),
        ],
      ),



    );
  }
}
