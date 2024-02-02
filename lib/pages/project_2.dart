import 'package:flutter/material.dart';

class ProjectTwo extends StatelessWidget {
  const ProjectTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold  (
      endDrawer: EndDrawerButton(),
      appBar: AppBar(
        iconTheme: IconThemeData(size: 40, color: Colors.white),
        backgroundColor: Color(0xff10abcb),
        title: Row(
          children: [
            Image.asset(
              "images/fero.png",
              width: 42,
            ),
            Text(
              "\t\tAppointments",
              style: TextStyle(fontSize: 25),
            )
          ],
       ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25,)
            ,Text('Wednesday, 22 May 2019', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
            ,SizedBox(height: 75,)
              ,Container(
                child: Column(
                  children: [
                    MyTile(title: "Lulian Ruja", time: "10:50" ,)
                     , MyTile(title: "Victoria Olari", time: "13:00" ,)
                      ,  MyTile(title: "Diana Stefan", time: "15:20" ,)
                       ,   MyTile(title: "Gheorge Popa", time: "16:10" ,isdone: false,)
                        ,    MyTile(title: "Alexandru Sandu", time: "16:40" ,isdone: false,hasIcon: true,)
                         ,     MyTile(title: "Dumitru Simona", time: "08:00" ,isdone: true,hasIcon: true,)
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  const MyTile({
    super.key, this.title, this.time,this.isdone=false,this.hasIcon=false
  });
final String ? title;
final String ? time;
final bool  isdone;
final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return Container(height: 75 ,
    padding: EdgeInsets.all(17),
    width: 370,
    decoration: BoxDecoration(color: Colors.grey.shade100 , border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 2))),
      child: 
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!)
            ,Row(
              children: [
                Icon(Icons.alarm)
                , Text(time!)
              ],
            )
          ],
        )
        
         , hasIcon ? (isdone ? Icon(Icons.done_all_rounded, color: Colors.blue,size: 40,):Icon(Icons.close , color: Colors.red,size: 40,)) : SizedBox(height: 5,)
      ],
    ),
    );
  }
}