import "package:flutter/material.dart";

class TodoItem extends StatelessWidget {
  TodoItem(
      {super.key,
      required this.text,
      required this.description,
      required this.removeSelectedTodo});

  final String text;
  final String description;
  void Function(String) removeSelectedTodo;

  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          Dismissible(
            key: Key(text),
            onDismissed: (direction) {},
            background: Container(
              padding: EdgeInsets.only(left: 16),
              color: Colors.white,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.delete,
                  size: 32,
                  color: Colors.red,
                ),
              ),
            ),
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
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
