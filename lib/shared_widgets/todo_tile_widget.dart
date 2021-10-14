import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/utilities/utils.dart';


class TodoTileWidget extends StatelessWidget {
  const TodoTileWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Datum todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).shadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListTile(
          leading: Icon(
            todo.status ? Icons.check_circle : Icons.check_circle_outline,
            size: 30,
            color: dateColor('Yesterday'),
          ),
          title: Text(
            todo.title,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
          ),
          subtitle: Text(
            todo.description,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.grey),
          ),
          trailing: TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                color: dateColor(todo.dateTime),
              ),
              label: Text(
                todo.dateTime,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: dateColor(todo.dateTime)),
              )),
        ),
      ),
    );
  }
}
