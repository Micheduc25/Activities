import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:Scaffold(

        body: Container(
          decoration:BoxDecoration(
            color:Colors.black
          ),

          child:Stack(
            

          children:[ ListView(
            // padding:EdgeInsets.only(bottom: 40),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[


                   ListItem( date:"Tuesday 8:30pm" ,title:"READ INSPIRING QUOTES OUT LOUD" , itemColor: Colors.blue[900],itemHeight: 800) ,
            
                   

                   ListItem( date:"Thursday 5:00am" ,title:"DRINK TWO CUPS OF DARK COFFEE" , itemColor: Colors.blue[800],itemHeight: 640,), 
                 

                 
                ListItem( date:"Tuesday 5:30am" ,title:"CRAZY EFFECT MUSIC HAS ON THE BRAIN" , itemColor: Colors.blue[600],itemHeight: 480,),
            

              
                ListItem(date:"Monday 2:12pm", title:"HARDWORK IS THE ONLY WAY", itemColor: Colors.blue[300],itemHeight: 320,),

                
                  Container(
                    height: 160,
                    width: double.infinity,
            decoration:BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            
            ),
            padding: EdgeInsets.only(left: 10, right: 10,top:30,bottom: 30),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeaderIcon(label: "HEALTH",myico: Icons.favorite_border ),

                    HeaderIcon(label: "MUSIC", myico: Icons.headset,),
                    HeaderIcon(label: "PHONE", myico: Icons.phone_android)
                  ],
            ) ,
          ),
    
                  ]

              ),
 
            ],
          ),
          
           Positioned(
            bottom: 0,
            right: 0,
            child:
           Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Padding(
                  padding: EdgeInsets.only(right:5,bottom: 5),
                  child:
              FloatingActionButton(
                
                backgroundColor: Colors.white,
                onPressed: (){
                  print("floating button was pressed");
                },

                child: Icon(Icons.add ,size: 30, color: Colors.black,),
              ),
              )
              ],
              ),
              )
          
          ]

          ),
        ),

        
        ),

      

    );
      
  }
}



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