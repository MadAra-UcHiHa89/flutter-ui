import "package:flutter/material.dart";
import "package:todo1/model/todo.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final _todoData = [
    Todo(
        text: "Streaming App",
        description: "A streaming app for movies and series"),
    Todo(
        text: "Social Media App",
        description: "A social media app for sharing photos and videos"),
    Todo(
        text: "E-Commerce App",
        description: "An e-commerce app for selling products"),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_sharp,
          size: 28,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, size: 28, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
