import 'package:flutter/material.dart';
import 'package:livestream/livestream.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var host=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Host", style: TextStyle(
                  fontSize: 20
                ),),
                Checkbox(value: host, onChanged: (value){
                  setState((){
                    host=value!;
                  });

                })
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyLive(liveID: "1", isHost: host,)));
            }, child: Text("Start"))
          ],
        ),
      ),
    );
  }
}

