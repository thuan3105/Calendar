import 'package:flutter/material.dart';
import '../model/event.dart';
import 'package:intl/intl.dart';

class EventItem extends StatelessWidget {
  final Event event;
  final Function() onDelete;
  final Function()? onTap;

  EventItem({
    Key? key,
    required this.event,
    required this.onDelete,
    this.onTap,
  }) : super(key: key);
  final formatter = DateFormat('dd/MM/yyyy');
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        event.title,
      ),
      subtitle: Text(
        formatter.format(event.date),
      ),
      onTap: onTap,
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onDelete,
      ),
    );
  }
}
