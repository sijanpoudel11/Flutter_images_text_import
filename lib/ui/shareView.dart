import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareView extends StatefulWidget {
  ShareView({super.key});

  @override
  State<ShareView> createState() => _ShareViewState();
}

class _ShareViewState extends State<ShareView> {
  List<Map<String, dynamic>> users = [
    {"name": "sijan", "selected": false},
    {"name": "sarad", "selected": false},
    {"name": "santosh", "selected": false},
    {"name": "kushal", "selected": false},
    {"name": "gokul", "selected": false},
    {"name": "aashish", "selected": false},
    {"name": "aabhusan", "selected": false}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () {
          // handle send logic
        },
        child: Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Text(
            "send",
            style: TextStyle(fontSize: 20),
          )),
        ),
      ),
      appBar: AppBar(
        title: Text("select users to share to "),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(users[index]["name"]),
                      CupertinoSwitch(
                        value: users[index]['selected'],
                        onChanged: (value) {
                          setState(() {
                            users[index]['selected'] =
                                !users[index]['selected'];
                          });
                        },
                      )
                    ]),
              );
            },
          ))
        ],
      ),
    );
  }
}
