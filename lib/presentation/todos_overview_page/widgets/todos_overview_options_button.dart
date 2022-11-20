import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_bloc_example/application/todo_actor_bloc/todo_actor_bloc.dart';
import 'package:todos_bloc_example/application/todo_reader_bloc/todo_reader_bloc.dart';
import 'package:todos_bloc_example/l10n/l10n.dart';
import 'package:todos_bloc_example/models/todo.dart';

@visibleForTesting
enum TodosOverviewOption { toggleAll, clearCompleted }

class TodosOverviewOptionsButton extends StatelessWidget {
  const TodosOverviewOptionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final List<Todo> todos =
        context.select((TodoReaderBloc bloc) => bloc.state.maybeMap(
              loadSuccess: (state) => state.todos,
              orElse: () => [],
            ));
    final hasTodos = todos.isNotEmpty;
    final completedTodosAmount = todos.where((todo) => todo.isCompleted).length;

    return BlocListener<TodoActorBloc, TodoActorState>(
      listenWhen: (previous, current) => current.maybeMap(
        actionSuccess: (_) => true,
        deleteSuccess: (_) => true,
        orElse: () => false,
      ),
      listener: (context, state) {
        context
            .read<TodoReaderBloc>()
            .add(TodoReaderEvent.todoUpdated(state.maybeWhen(
              // shortcut for (something) => something
              actionSuccess: id,
              // shortcut for (something) => something
              deleteSuccess: id,
              orElse: () => throw Error(),
            )));
      },
      child: PopupMenuButton<TodosOverviewOption>(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        tooltip: l10n.todosOverviewOptionsTooltip,
        onSelected: (options) {
          switch (options) {
            case TodosOverviewOption.toggleAll:
              context
                  .read<TodoActorBloc>()
                  .add(const TodoActorEvent.toggleAllRequested());
              break;
            case TodosOverviewOption.clearCompleted:
              context
                  .read<TodoActorBloc>()
                  .add(const TodoActorEvent.clearCompletedRequested());
          }
        },
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              value: TodosOverviewOption.toggleAll,
              enabled: hasTodos,
              child: Text(
                completedTodosAmount == todos.length
                    ? l10n.todosOverviewOptionsMarkAllIncomplete
                    : l10n.todosOverviewOptionsMarkAllComplete,
              ),
            ),
            PopupMenuItem(
              value: TodosOverviewOption.clearCompleted,
              enabled: hasTodos && completedTodosAmount > 0,
              child: Text(l10n.todosOverviewOptionsClearCompleted),
            ),
          ];
        },
        icon: const Icon(Icons.more_vert_rounded),
      ),
    );
  }
}
