import 'package:demo/Services/providerService.dart';
import 'package:demo/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightChocolate,
      appBar: AppBar(
        title: const Text('Summary'),
        backgroundColor: lightChocolate,
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          List<String> summaryList = taskProvider.summaryList;

          return Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
               color: darkChocolate,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child:!summaryList.isEmpty? ListView.builder(
              itemCount: summaryList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(summaryList[index],style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  // You can customize the ListTile or use a different widget based on your needs
                );
              },
            ):
                const Center(
                   child: Text('No Task Summary Available...',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),)
                )
          );
        },
      ),
    );
  }
}
