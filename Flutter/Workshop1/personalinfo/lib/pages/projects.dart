import 'package:flutter/material.dart';
import 'package:personalinfo/pages/ClassPro.dart';
import 'package:url_launcher/url_launcher.dart';
class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override

  List<ClassPro> projects = [
    ClassPro(date: '12th November, 2019',description: 'Doctor and patient friendly application',url: 'https://Github.com/raghavddps2'),
    ClassPro(date: '13th November, 2019',description: 'Blog application',url: 'https://Github.com/raghavddps2'),
    ClassPro(date: '14th November, 2019',description: 'Women safety application',url: 'https://Github.com/raghavddps2'),
  ];

    Widget projectTemplate(project) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
      
      child: Padding(
        padding: const EdgeInsets.all(12.0),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              project.description,
              style: TextStyle(
                fontSize: 18.0, 
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 6.0),
            Text(
              project.date,
              style: TextStyle(
                fontSize: 14.0, 
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: (){
                launch(project.url);  
              },
              label: Text('Visit Project'),
              icon : Icon(Icons.open_in_browser)
            )
          ],
        ),
    )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('My Projects'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: projects.map((project) => projectTemplate(project)).toList(),
      ),
    );
  }
  
}