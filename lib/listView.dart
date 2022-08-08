import 'package:flutter/material.dart';
import 'userModel.dart';

class listView extends StatefulWidget {
  const listView({Key? key}) : super(key: key);

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {

  Widget avatarContacts(int index){
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 24,
      child: Text(
        userModel[index].codeName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget textContacts(int index){
    return Expanded(child: Container(
      margin: EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            userModel[index].name,
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ));
  }

  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts"),),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: userModel.length,
        itemBuilder: (buildContext, index) {
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  avatarContacts(index),
                  textContacts(index),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
