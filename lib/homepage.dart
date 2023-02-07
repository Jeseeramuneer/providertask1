import 'package:flutter/material.dart';
import 'package:providedtask1/provider/providerclass.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counter=Provider.of<Providerclass>(context).getcounter;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Provider Tutorial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:"),
            Text('$counter',style: Theme.of(context).textTheme.headline4)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Provider.of<Providerclass>(context,listen: false).incrementcounter();
          },
        tooltip: "Icrement",
        child: Icon(Icons.add),
      ),

    );
  }
}
