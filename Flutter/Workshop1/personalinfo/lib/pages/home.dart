import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My Mini Resume'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/raghav.jpg'),
                  radius: 100.0  ,
                ),
            ),
            Divider(
              height: 20.0,
              color: Colors.grey[800],
            ),
          Text(
            'Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            )
          ),
          SizedBox(height: 10.0,),
          Text(
            'Raghav Maheshwari',
            style: TextStyle(
              color: Colors.amberAccent[100],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 20.0,),
          Text(
            'Age',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            )
          ),
          SizedBox(height: 10.0,),
          Text(
            '19',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.alternate_email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0,),
              Text(
                'raghav.ddps2@gmail.com',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.phone,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0,),
              Text(
                '+91 8384852943',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.school,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0,),
              Text(
                'MSRIT, Information Sc.',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
                ),
              ),
              
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.work,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0,),
              Text(
                'Bangalore,KA,IN',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
                ),
              ),
              
            ],
          ),
          SizedBox(height: 20.0,),
          MaterialButton(
          minWidth: double.infinity,
          onPressed: (){
            Navigator.pushNamed(context,'/project');
          },
          color: Colors.deepPurpleAccent,
          elevation: 20.0,
          child: Text("View Projects"),
        ),  
        ],
        ),
      ),
    );
  }
}