import 'package:demo/Services/providerService.dart';
import 'package:demo/util/colors.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final int index;
  final TaskProvider taskProvider;
  final bool isMarkedForRemoval;
  final double w;
  const CardWidget({
    super.key,
    required this.title,
    required this.index,
    required this.taskProvider,
    required this.isMarkedForRemoval,
    required this.w});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: darkChocolate,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(title,style: const TextStyle(
                color: Colors.white,
                fontSize: 18
              ),),
            ),
            isMarkedForRemoval == false?
            Button(nameOfButton: 'Add',
              onPressed: ()
              {taskProvider.toggleTaskMarkedForRemoval(index);
              taskProvider.addOrRemove('add', title);},):
            Button(nameOfButton: 'Remove',
                onPressed:() {
                  taskProvider.toggleTaskMarkedForRemoval(index);
                  taskProvider.addOrRemove('remove',title);
                }
            )
          ],
        ),
      ),
    );
  }
}
