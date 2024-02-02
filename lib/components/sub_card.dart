import 'package:flutter/material.dart';
class Subcard extends StatelessWidget {
  const Subcard({
   required this.imageSrc,
   required this.name,
   required this.price,
    super.key,
  });
final String imageSrc;
final String name;
final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 170,
                width: 140,
                decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(20) ),
                child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(radius: 40, backgroundImage: AssetImage(imageSrc),backgroundColor: Colors.transparent)
                    ,Text(name,style: const TextStyle(fontSize:20)),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: [
                         Text("$price \$",style: const TextStyle(fontSize: 25,color: Colors.green),),
                        Container(
                          height: 50,
                          width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green, borderRadius: BorderRadius.circular(20)
                            ),
                          child: const Icon(Icons.plus_one),
                        ),
                      ],
                    )
                  
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
