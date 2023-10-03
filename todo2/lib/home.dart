import "package:flutter/material.dart";
import "package:todo2/model/todo.dart";

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
        text: "🎥	Streaming App",
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
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 7),
            const Text(
              "Hello, Aadil!",
              style: TextStyle(
                  color: Color.fromARGB(255, 145, 145, 145),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 54),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Projects (${_todoData.length})",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 54),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 480,
              width: double.infinity,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                      Dismissible(
                        key: Key(_todoData[0].text),
                        child: Container(
                          height: 100,
                          width: 320,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 178, 122, 233),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _todoData[0].text,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                _todoData[0].description,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 178, 122, 233),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadowColor: Colors.black),
                onPressed: () {},
                icon: Text(
                  "Write a new project",
                  style: TextStyle(letterSpacing: 1.2),
                ),
                label: Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
