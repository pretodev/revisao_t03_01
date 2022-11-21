import 'package:flutter/material.dart';
import 'package:revisao_t03_01/ui/components/item.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.addItem,
    required this.counter,
    required this.onItemClicked,
  });
  final int counter;
  final VoidCallback addItem;
  final void Function(int) onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: counter,
        itemBuilder: (context, index) {
          return Item(
            num: index,
            onClicked: () => onItemClicked(index + 1),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
