import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'package:widget_setstate/testing_page.dart';



class TestSpinCircle extends StatefulWidget {
  TestSpinCircle({Key? key}) : super(key: key);

  @override
  State<TestSpinCircle> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TestSpinCircle> {
  int selectedIndex=0;

List<List<SCItem>> circleItem=  [[
  //Suggested Count: 3
  SCItem(icon: const Icon(Icons.add), onPressed: (){}
    //   () {
    // Navigator.of(context).push(
    //     MaterialPageRoute(
    //         builder: (context)=>const TestingPage()));
    //    }

  ),
  SCItem(icon: const Icon(Icons.add), onPressed: () {print('add');}),
  SCItem(icon: const Icon(Icons.add), onPressed: () {}),
  SCItem(icon: const Icon(Icons.add ), onPressed: () {})
],
  [
  SCItem(icon: const Icon(Icons.print), onPressed: (){print('print');}),
    SCItem(icon: const Icon(Icons.print), onPressed: () {}),
  SCItem(icon: const Icon(Icons.print), onPressed: () {}),
  SCItem(icon: const Icon(Icons.print ), onPressed: () {})],

  [
    SCItem(icon: const Icon(Icons.map), onPressed: (){print('map');}),
    SCItem(icon: const Icon(Icons.map), onPressed: () {}),
    SCItem(icon: const Icon(Icons.map), onPressed: () {}),
    SCItem(icon: const Icon(Icons.map ), onPressed: () {})],

  [
    SCItem(icon: const Icon(Icons.account_balance_outlined), onPressed: (){print('account');}),
    SCItem(icon: const Icon(Icons.account_balance_outlined), onPressed: () {}),
    SCItem(icon: const Icon(Icons.account_balance_outlined), onPressed: () {}),
    SCItem(icon: const Icon(Icons.account_balance_outlined ), onPressed: () {})],


];

  @override
  Widget build(BuildContext context) {
    print(selectedIndex.toString());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("RetroPortal Studio"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        //Adding SpinCircleBottomBarHolder to body of Scaffold
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              circleColors: [Colors.white, Colors.orange, Colors.redAccent],
              iconTheme: const IconThemeData(color: Colors.black45),
              activeIconTheme: const IconThemeData(color: Colors.orange),
              backgroundColor: Colors.white,
              titleStyle: const TextStyle(color: Colors.black45,fontSize: 12),
              activeTitleStyle: const TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),
              actionButtonDetails: SCActionButtonDetails(
                  color: Colors.green ,
                  icon: const Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  ),
                  elevation: 2
              ),
              elevation: 3.0,
              items: [
                // Suggested count : 4
                SCBottomBarItem(icon: Icons.verified_user, title: "User", onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                }),
                SCBottomBarItem(icon: Icons.supervised_user_circle, title: "Details", onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                }),
                SCBottomBarItem(icon: Icons.notifications, title: "Notifications", onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                }),
                SCBottomBarItem(icon: Icons.details, title: "New Data", onPressed: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                }),

              ],
              circleItems:circleItem[selectedIndex],
              bnbHeight: 80 // Suggested Height 80
          ),
          child: Container(
            color: Colors.orangeAccent.withAlpha(55),
            child: const Center(child: Text("Isn't this Awesome!"),),
          ),
        ),
      ),
    );

  }
}
