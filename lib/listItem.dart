

import 'package:flutter/material.dart';
class ListItem extends StatefulWidget{

  final Color itemColor;
  final double itemHeight;
  final String date;
  final String title;

  ListItem({Key key,this.date,this.title, this.itemColor, @required this.itemHeight}):super(key:key);

  @override

  _ListItemState createState()=>_ListItemState();
}


class _ListItemState extends State<ListItem>{

  @override

  Widget build(BuildContext context){
    
    return 
          
       GestureDetector(
      
      onTap: (){
        print("Hellooo item tapped");
      },
      child:

     Container(
       
       
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: <Widget>[
          Container(
            padding:EdgeInsets.only(left:40, right:30, bottom:10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding:EdgeInsets.only(top:10,bottom: 10),
                  child:
                Text(widget.date,style: TextStyle(
                 fontSize: 14, color: Colors.white
                ),
                ),
                ),
                 Padding(
                  padding:EdgeInsets.only(bottom:10,left:5, right: 5,top: 5),
                  child:
                Text(widget.title,style: TextStyle(
                 fontSize: 23, color: Colors.white
                ),
                ),
                ),
                
                SizedBox(
                  width:65,
                  height: 40,

                  
                  child:
                Stack(
                  children: <Widget>[
                    Positioned(
                      left:0,

                      child:
                    CircleAvatar(
                      backgroundImage: AssetImage("./assets/me.jpg"),
                    ),
                    ),
                    Positioned(
                      right:0,
                      child:
                     CircleAvatar(
                      
                      backgroundImage: AssetImage("./assets/im4.png"),
                    )
                    )

                    
                  ],
                ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: widget.itemColor,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)

      ),
      ),
      height: widget.itemHeight,
      width: double.infinity,

    )
    
     );
  }
}