import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.yellow,
        elevation: 0,
        leading: Row(
          children: const [
            Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ],
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
        ],
        title: const OutlineSearchBar(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderColor: Colors.black,
          backgroundColor: Colors.yellow,
          borderWidth: 2,
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
              const SizedBox(
              height: 25,
            ),
           Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'New Message',
                  style: TextStyle(
                      color: Colors.yellow.shade700,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 450,
                  child: SizedBox(
                    height: 150,
                    child: TextField(
                      expands: true,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                          hintText: 'Write a message',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 20),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
              ],
              
            ),

             const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 2 / 3,
              height: 50,
              child: TextButton(
                  onPressed: () {},
                  child:  Text(
                    'Apply',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        // If the button is pressed, return green, otherwise blue
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.yellow;
                        }
                        return Colors.yellow;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.black))))),
            ),
          ],
        ),
      ),
    );
  }
}