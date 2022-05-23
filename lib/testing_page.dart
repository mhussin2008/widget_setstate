import 'package:flutter/material.dart';
import 'new_pie_chart.dart';
import 'new_slider.dart';
import 'count.dart';
import 'options_list.dart';
import 'fading_widget_package.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({Key? key}) : super(key: key);

  @override
  _TestingPageState createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  int count = 0;
  double sliderValue=0;
  final Map<String,double> dMap={
    'Flutter':3,
    'C++':4,
    'Dart':0
  };

  List<List<String>> optionsPage=[['Option 1','Option 2','option 3'],
    ['Option a','Option b','option c']
  ];

  List<String> selected=['Option 1','Option a'];



  void  onSliderChange(double v){
    setState((){
      sliderValue=v;
    });
  }

  void onCountChange(int val) {
    setState(() {
      count += val;
      dMap['Flutter']=count.toDouble();
    });
  }

  void updateOptions(String newSelection ,int pageNum ){
   setState(()
     {
      selected[pageNum]=newSelection;
     }
     );
  }



  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Communication")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              NewSlider(myValue: sliderValue,
                  changeSlider: (sliderNewValue ){
               onSliderChange(sliderNewValue);
                  })
              ,
              const SizedBox(height: 20,),

              MyNewPie(
                percent: sliderValue,
                dMap: dMap,
              ),
              const SizedBox(height: 20,),
              Count(
                count: count,
                onCountSelected: () {
                  print("Count was selected.");
                },
                onCountChanged: (int val) {
                  onCountChange(val);
                },
              ),
              const SizedBox(height: 20),
              OptionsList(
                  options: optionsPage,
                  update: (sel)
                  {updateOptions(sel,0);},
                selected: selected[0],
                pNum: 0,
              )
            ,
              ElevatedButton(onPressed: (){
                print(selected);
              }, child: const Text('Print Selected')
              )
              ,OptionsList(
                options: optionsPage,
                update: (sel)
                        {updateOptions(sel,1);},
                selected: selected[1],
                pNum: 1,
              ),
              FadingAnimation(
                duration: 3,
                child: Icon(
                  Icons.favorite,
                  size: 100,
                  color: Colors.red,
                ),
              ),
            ],
          )
      ),
    );
  }
}