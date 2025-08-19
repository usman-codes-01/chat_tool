import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 8,
        title: const Text(
          'Chat Room',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        leading: const Icon(CupertinoIcons.home),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              // search action
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // more options action
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          onPressed: () {
            // new chat action
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add_circle_outline_rounded,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
