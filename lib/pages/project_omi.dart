import 'package:flutter/material.dart';

class ProjectOMII extends StatelessWidget {
  const ProjectOMII({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xff10abcb),
        title: Row(
          children: [
            Text("OMII"),
          ],
        ),
      ),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("بحبك", style: TextStyle(fontSize: 40, color: Colors.red),),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
              ), 
              child:
              Text('omi')
              // Image.asset("images/OMII.jpg")
            )
          ],
        ),
      ),
    );
  }
}