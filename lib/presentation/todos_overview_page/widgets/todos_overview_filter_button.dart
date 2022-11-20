import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_bloc_example/application/todo_watcher_bloc/todo_watcher_bloc.dart';
import 'package:todos_bloc_example/l10n/l10n.dart';
import 'package:todos_bloc_example/models/todos_view_filter.dart';

class TodosOverviewFilterButton extends StatelessWidget {
  const TodosOverviewFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final TodosViewFilter activeFilter =
        context.select((TodoWatcherBloc bloc) => bloc.state.maybeMap(
              loadSuccess: (state) => state.filter,
              orElse: () => TodosViewFilter.all,
            ));

    return PopupMenuButton<TodosViewFilter>(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      initialValue: activeFilter,
      tooltip: l10n.todosOverviewFilterTooltip,
      onSelected: (filter) => context
          .read<TodoWatcherBloc>()
          .add(TodoWatcherEvent.filterChanged(filter)),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: TodosViewFilter.all,
            child: Text(l10n.todosOverviewFilterAll),
          ),
          PopupMenuItem(
            value: TodosViewFilter.activeOnly,
            child: Text(l10n.todosOverviewFilterActiveOnly),
          ),
          PopupMenuItem(
            value: TodosViewFilter.completedOnly,
            child: Text(l10n.todosOverviewFilterCompletedOnly),
          ),
        ];
      },
      icon: const Icon(Icons.filter_list_rounded),
    );
  }
}
