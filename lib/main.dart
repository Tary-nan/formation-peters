import 'package:flutter/material.dart';

void main() {
  runApp(const ChatMeApp());
}

class ChatMeApp extends StatelessWidget {
  const ChatMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessageScreen(),
    );
  }
}

// Ma première page

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 150,
        leading: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(.3),
            child: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3), shape: BoxShape.circle),
            child: const Icon(
              Icons.edit_calendar_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .7,
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search ...",
                        fillColor: Colors.grey.withOpacity(.3),
                        filled: true,
                        contentPadding: const EdgeInsets.all(14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.transparent.withOpacity(.1),
                                width: .5))),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.edit_calendar_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('data'),
                      Text('data'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.only(right: 7),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.withOpacity(.5),
                                  radius: 30,
                                ),
                                Text('data $index')
                              ],
                            ),
                          )),
                  // child: ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children: [
                  // Column(
                  //   children: const [
                  //     CircleAvatar(
                  //       radius: 30,
                  //     ),
                  //     Text('data')
                  //   ],
                  // ),
                  //     Column(
                  //       children: const [
                  //         CircleAvatar(
                  //           radius: 30,
                  //         ),
                  //         Text('data')
                  //       ],
                  //     ),
                  //     Column(
                  //       children: const [
                  //         CircleAvatar(
                  //           radius: 30,
                  //         ),
                  //         Text('data')
                  //       ],
                  //     )
                  //   ],
                  // ),
                )
              ],
            ),
          ),
          Expanded(child: Container(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: const Text('Lukas Graham'),
                subtitle: const Text('Hello lucas '),
                trailing: const Text('09/05/2023'),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.4),
                ),
              );
            }),
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "message"),
        ],
      ),
    );
  }
}
