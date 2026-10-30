import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String message = "Flutter Intern Blog";
  void changeMessage() {
    setState(() {
      message = 'Welcome to Intern Blog';
    });
  }

  void backMessage() {
    setState(() {
      message = 'Back to Intern Blog';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          'Intern Blog',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10,),
                  Text('Aung Aung', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Text('Admin'),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10,),
                  Text('Su Su', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Text('Editor'),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10,),
                  Text('Hla Hla', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Text('HR'),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: changeMessage,
                    child: Text("Click Me", style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: backMessage,
                    child: Text('Back', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
