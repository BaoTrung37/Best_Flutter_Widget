import 'package:flutter/material.dart';

class ReorderableListViewScreen extends StatefulWidget {
  const ReorderableListViewScreen({super.key});

  @override
  State<ReorderableListViewScreen> createState() =>
      _ReorderableListViewScreenState();
}

class _ReorderableListViewScreenState extends State<ReorderableListViewScreen> {
  final List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: List.generate(
        items.length,
        (index) => ListTile(
          key: Key('$index'),
          title: Text('Itesm ${items[index]}'),
          tileColor: items[index] % 2 == 0 ? Colors.red : Colors.blue,
          trailing: const Icon(Icons.drag_handle_outlined),
        ),
      ),
      onReorder: (int oldIndex, int newIndex) {
        debugPrint('oldIndex: $oldIndex, newIndex: $newIndex');
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
    );
  }
}
