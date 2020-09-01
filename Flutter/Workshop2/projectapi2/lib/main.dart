import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() {

  runApp(MaterialApp(
    home: HomePage(),));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map data;
  List userData;


  Future getData() async {
    http.Response response = await http.get("http://www.omdbapi.com/?s=football&apikey=cdc061ee");
    data = json.decode(response.body);
    setState(() {
      userData = data["Search"];
    });
    print(userData.runtimeType);
    // debugPrint(userData.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Movie Application Usnig APIs'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: userData == null ? 0: userData.length,
        itemBuilder: (BuildContext context,int index){
            return Card(
              color: Colors.white,
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                    children: <Widget>[
                      Image(
                        image: NetworkImage(userData[index]["Poster"]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("${userData[index]["Title"]} " " ${userData[index]["Year"]}",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                        
                      ),
                    ],
                  ),
              ),
            );
        },
      ),
    );
  }
}