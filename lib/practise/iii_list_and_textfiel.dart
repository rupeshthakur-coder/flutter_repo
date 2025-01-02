// Add items to a shopping list.
// Remove individual items from the list.
// Clear the entire list with a button click.
// Bonus Features:

// Each list item should display its index (e.g., "1. Apples").
// Use a TextField to take user input for the item name.
// Add a confirmation dialog when the user clicks the "Clear List" button.
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _shoppingList = [];

  void addItems() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _shoppingList.add(_controller.text.trim());
        _controller.clear();
      });
    }
  }

  void deleteItems(int index) {
    setState(() {
      _shoppingList.removeAt(index);
    });
  }

  void clearList() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('clear list'),
        content: const Text('are sure you wnat to clear the list ??'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("no"),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _shoppingList.clear();
                });
                Navigator.pop(context);
              },
              child: const Text('yes'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                ),
              ),
              IconButton(
                onPressed: addItems,
                icon: const Icon(Icons.add),
              )
            ],
          ),
          Expanded(
            child: _shoppingList.isEmpty
                ? const Text("no data to show ")
                : ListView.builder(
                    itemCount: _shoppingList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('${index + 1}. ${_shoppingList[index]}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => deleteItems(index),
                        ),
                      );
                    },
                  ),
          ),
          ElevatedButton(onPressed: clearList, child: const Text('clear all list'))
        ],
      ),
    );
  }
}
