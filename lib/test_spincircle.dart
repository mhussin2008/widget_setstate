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


  @override
  Widget build(BuildContext context) {

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
              elevation: 2.0,
              items: [
                // Suggested count : 4
                SCBottomBarItem(icon: Icons.verified_user, title: "User", onPressed: () {

                }),
                SCBottomBarItem(icon: Icons.supervised_user_circle, title: "Details", onPressed: () {}),
                SCBottomBarItem(icon: Icons.notifications, title: "Notifications", onPressed: () {}),
                SCBottomBarItem(icon: Icons.details, title: "New Data", onPressed: () {}),
              ],
              circleItems: [
                //Suggested Count: 3
                SCItem(icon: const Icon(Icons.add), onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>const TestingPage()));
                }),
                SCItem(icon: const Icon(Icons.print), onPressed: () {}),
                SCItem(icon: const Icon(Icons.map), onPressed: () {}),
              ],
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
