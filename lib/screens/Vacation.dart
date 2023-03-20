import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class Vacation extends StatelessWidget {
  const Vacation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.arrow_back_ios_new_rounded, size: 30),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  'Back',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 200,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Pending..',
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(color: Colors.yellow)))))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Vacation Requests',
                  style: TextStyle(
                      color: Colors.yellow.shade700,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'To Get a permssion for a vacation please ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'assign this form',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Employee ID',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 20),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Vacation Starts at',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
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
                  width: MediaQuery.of(context).size.width / 4 - 15,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Day',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 20),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4 - 15,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Month',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 20),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4 - 15,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Year',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 20),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Vacation Ends at',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
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
                  width: MediaQuery.of(context).size.width / 4 - 15,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Day',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 20),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4 - 15,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Month',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 20),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4 - 15,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Year',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 20),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Vacation reasons',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
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
                  height: 150,
                  child: SizedBox(
                    height: 150,
                    child: TextField(
                      expands: true,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                          hintText: 'Write a description',
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
                  child: const Text(
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
            )
          ],
        ),
      ),
    );
  }
}
