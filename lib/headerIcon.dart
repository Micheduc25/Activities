import 'package:flutter/material.dart';
class HeaderIcon extends StatefulWidget{
   final IconData myico;
  final String label;
  
  HeaderIcon({Key key,this.myico, this.label})
  :super(key:key);

  @override
  _HeaderIconState createState()=> new _HeaderIconState();

}


class _HeaderIconState extends State<HeaderIcon>{

  Color iconColor=Colors.white;
  bool clicked=false;
  

  @override

  Widget build(BuildContext context){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        
        
        Container(
          decoration:BoxDecoration(
            border: Border.all(color:iconColor,width: 2),
            borderRadius: BorderRadius.circular(100),
            
          ),
          alignment: Alignment.center,
          width:60,
          height: 60,
          child:

          IconButton(
            color: Colors.blue,
            padding: EdgeInsets.all(0),
            alignment: Alignment.center,
             icon: Icon(widget.myico,size: 40,color:iconColor),
             

            onPressed: (){
              setState(
                (){
                  if(!clicked){
                    iconColor=Colors.blueAccent;
                    clicked=true;
                  }

                  else{
                    iconColor=Colors.white;
                    clicked=false;

                  }
                  
                }
              );
            }
          
        ),
        ),

        Center(
          child:
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,

          ),
          textAlign: TextAlign.center,
          
          )
          )
      ],
      );
  }

 
}
