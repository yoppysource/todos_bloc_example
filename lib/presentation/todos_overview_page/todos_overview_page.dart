import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_bloc_example/application/todo_actor_bloc/todo_actor_bloc.dart';
import 'package:todos_bloc_example/application/todo_watcher_bloc/todo_watcher_bloc.dart';
import 'package:todos_bloc_example/presentation/edit_todo_page.dart';
import 'package:todos_bloc_example/l10n/l10n.dart';
import 'package:todos_bloc_example/presentation/todos_overview_page/widgets/todo_list_tile.dart';
import 'package:todos_bloc_example/presentation/todos_overview_page/widgets/todos_overview_filter_button.dart';
import 'package:todos_bloc_example/presentation/todos_overview_page/widgets/todos_overview_options_button.dart';

class TodosOverviewPage extends StatelessWidget {
  const TodosOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TodosOverviewView();
  }
}

class TodosOverviewView extends StatelessWidget {
  const TodosOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.todosOverviewAppBarTitle),
        actions: const [
          TodosOverviewFilterButton(),
          TodosOverviewOptionsButton(),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<TodoWatcherBloc, TodoWatcherState>(
            listener: (context, state) {
              state.mapOrNull(
                  loadFailure: (state) => ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(l10n.todosOverviewErrorSnackbarText),
                      ),
                    ));
            },
          ),
          BlocListener<TodoActorBloc, TodoActorState>(
            listenWhen: (previous, current) =>
                current.mapOrNull(deleteSuccess: (_) => true) ?? false,
            listener: (context, state) {
              final deletedTodo = context.read<TodoActorBloc>().lastDeleted!;
              final messenger = ScaffoldMessenger.of(context);
              messenger
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(
                      l10n.todosOverviewTodoDeletedSnackbarText(
                        deletedTodo.title,
                      ),
                    ),
                    action: SnackBarAction(
                      label: l10n.todosOverviewUndoDeletionButtonText,
                      onPressed: () {
                        messenger.hideCurrentSnackBar();
                        context
                            .read<TodoActorBloc>()
                            .add(const TodoActorEvent.undoDeletionRequested());
                      },
                    ),
                  ),
                );
            },
          ),
        ],
        child: BlocBuilder<TodoWatcherBloc, TodoWatcherState>(
          builder: (context, state) => state.maybeMap(
            loadSuccess: (state) => CupertinoScrollbar(
              child: state.todos.isEmpty
                  ? Center(
                      child: Text(
                        l10n.todosOverviewEmptyText,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    )
                  : ListView(
                      children: [
                        for (final todo in state.filteredTodos)
                          TodoListTile(
                            todo: todo,
                            onToggleCompleted: (isCompleted) {
                              context
                                  .read<TodoActorBloc>()
                                  .add(TodoActorEvent.completionToggled(todo));
                            },
                            onDismissed: (_) {
                              context
                                  .read<TodoActorBloc>()
                                  .add(TodoActorEvent.todoDeleted(todo));
                            },
                            onTap: () {
                              Navigator.of(context).push(
                                EditTodoPage.route(initialTodo: todo),
                              );
                            },
                          ),
                      ],
                    ),
            ),
            orElse: () => const Center(child: CupertinoActivityIndicator()),
          ),
        ),
      ),
    );
  }
}
