import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({Key? key}) : super(key: key);

  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  var dataList= [
    "Roll 1",
    "Roll 2",
    "Roll 3",
    "Roll 4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(dataList[index]),
              subtitle: Text("Sub title"),
              leading: Text((index+1).toString()),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            dataList.add("Roll ${dataList.length+1}");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
