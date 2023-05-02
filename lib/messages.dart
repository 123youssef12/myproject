import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class messages extends StatelessWidget {
  const messages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

appBar: AppBar(
  backgroundColor: Colors.yellow,
  leading: Row(
    children: [
      Icon(Icons.home_filled,color: Colors.black,),
      SizedBox(width: 5,),
      Icon(Icons.notifications,color: Colors.black,)
    ],
  ),
 title: OutlineSearchBar(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderColor: Colors.black,
          backgroundColor: Colors.yellow,
          borderWidth: 2,
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),

        actions: const [
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.menu,
            color: Colors.black,
          )
        ]
),

floatingActionButton: FloatingActionButton(
  backgroundColor: Colors.yellow,
  child: Icon(Icons.add,color: Colors.black,),
  onPressed: (){}),

body: Column(
  children: [
    
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
      child: Row(
    
        children: [
          Text("Messages", style: TextStyle(
            color: Colors.yellow
            ,fontSize: 25,
            fontWeight: FontWeight.bold
            
          ),)
        ],
      ),
    ),


Expanded(child: 

    ListView.builder(
padding: EdgeInsets.all(12),
itemCount: 8,
itemBuilder: (context,index){
  return messageCard(message: index.toString());
},
) 
)

  ],
)
    );
  }
}

class messageCard extends StatelessWidget {
  const messageCard({
    super.key, required this.message,
  });
final String message;
  @override
  Widget build(BuildContext context) {
    return Card(margin: EdgeInsets.all(7),
              elevation: 0,
              color: Color.fromARGB(188, 217, 217, 217),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child:  SizedBox(
                width: 200,
                height: 100,
                child:
    Center(child: Text(message, style: TextStyle(fontSize: 20))),
              ));
  }
}