

import 'package:flutter/material.dart';
import 'package:project1/pages/project_2.dart';

class ProjectOne extends StatelessWidget {
  const ProjectOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 37, 33),
    appBar: AppBar(elevation: 0,
      backgroundColor: Colors.transparent,
      title:
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
           GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectTwo())),child:    Icon(Icons.chevron_left)),
      Icon(Icons.brightness_6_rounded)]),
    ),
    body:  Center(
      child: Column(
        children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/GOAT.jpg" ),
            )
     , const SizedBox(
    height: 10,)  
     , const Text(
         "Lionel Messi",
        style:TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold))
    ,Text(
        "messi10@GOAT.com",
        style: TextStyle(color: Colors.grey.shade500),
      )
    ,const SizedBox(
      height: 10,)  
      ,const SizedBox(
      height: 10,)            
      ,Container(height: 60,
                width: 210,
      padding: const EdgeInsets.all(20),
        decoration:
         BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(35)),
          child: 
          const Center(
            child: 
            Text(
              "Upgrade to PRO",
               style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17)
               ,
               )
               ),
               )
      ,const SizedBox(
      height: 20,)        
       ,MyButton(buttonTitle: "Privacy",icon:Icons.person ,) 
        ,MyButton(buttonTitle: "Purchase History",icon:Icons.history ,) 
         ,MyButton(buttonTitle: "Help and Support",icon:Icons.help_outline_rounded ,) 
          ,MyButton(buttonTitle: "Settings",icon:Icons.settings ,) 
           ,MyButton(buttonTitle: "Invite a Friend",icon:Icons.person_add_alt_1_rounded ,)
            ,MyButton(buttonTitle: "Log Out",icon:Icons.logout_rounded ,isTrue: false,) 
      ]
      ),
    ),
        
      );
  }
}

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
   MyButton({
    super.key, required this.buttonTitle, required this.icon,  this.isTrue=true,
  });
  final String buttonTitle;
  final IconData icon;
  bool? isTrue;
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(vertical: 7),
      height: 60,
      width: 320,
      decoration: 
      BoxDecoration(
        color: const Color(0xff373737) ,
         borderRadius: BorderRadius.circular(35)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon , color: Colors.white),const SizedBox(width: 5,)
                ,Text(buttonTitle, style: const TextStyle(  color: Colors.white),)
                
              ],
            ),
          isTrue! ?  const Icon(Icons.chevron_right , color: Colors.white,):const SizedBox()
          ],
        ),
      ),
    );
  }
}
