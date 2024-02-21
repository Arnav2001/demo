import 'package:demo/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../Components/listViewBuilder.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: lightChocolate,
      floatingActionButton: GestureDetector(
        onTap:()=>Navigator.pushNamed(context, '/detail'),
        child: Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            color: babyBrown,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black)
          ),

        child: const Text('Next',style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),),),
      ),
      appBar: AppBar(
        backgroundColor: lightChocolate,
        title: const Text('Tasks'),
          centerTitle: true,),
      body: AnimationLimiter(
        child: ListViewBuilder(w: _w,)
      ),
    );
  }
}