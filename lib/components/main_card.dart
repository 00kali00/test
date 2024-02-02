import 'package:flutter/material.dart';

class MainCard extends StatefulWidget {
   MainCard({
    super.key,
    required this.mainIcon,
    required this.mainName,
    this.isSelected=false
   
  });

  final IconData mainIcon;
  final String mainName;
   bool isSelected;

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
     bool? isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected==true?isSelected=false:isSelected=true;

            });
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 70,
            width: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
            ,border: Border.all(color: Colors.black)
            , color: isSelected!? Colors.green: Colors.transparent,
            ),
            child: Icon(widget.mainIcon),
          ),
        ),
        Text(widget.mainName)
      ],
    );
  }
}