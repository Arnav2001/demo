import 'package:demo/Components/card.dart';
import'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import '../Model/taskModel.dart';
import '../Services/providerService.dart';

class ListViewBuilder extends StatelessWidget {
  final  double w;
  const ListViewBuilder({super.key, required this.w});



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
        builder: (context, taskProvider,child){
          List<Task> tasks = taskProvider.tasks;
          return ListView.builder(
            padding: EdgeInsets.all(w / 30),
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: tasks.length,
            itemBuilder: (BuildContext c, int i) {
              return AnimationConfiguration.staggeredList(
                position: i,
                delay: const Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: const Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: FlipAnimation(
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    flipAxis: FlipAxis.y,
                    child: Container(
                      margin: EdgeInsets.only(bottom: w / 20),
                      height: w / 4,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: CardWidget(
                        title: tasks[i].title,
                        index: i,
                        isMarkedForRemoval: tasks[i].isMarkedForRemoval,
                        taskProvider: taskProvider,
                        w: w,
                      )
                    ),
                  ),
                ),
              );
            },
          );
        }
    );
  }
}
