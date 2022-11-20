import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_bloc_example/application/todo_form_bloc/todo_form_bloc.dart';
import 'package:todos_bloc_example/application/todo_reader_bloc/todo_reader_bloc.dart';
import 'package:todos_bloc_example/infra/todo_repository.dart';
import 'package:todos_bloc_example/l10n/l10n.dart';
import 'package:todos_bloc_example/models/todo.dart';

class EditTodoPage extends StatelessWidget {
  const EditTodoPage({super.key});

  static Route<void> route({Todo? initialTodo}) {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context) => BlocProvider(
        create: (context) => TodoFormBloc(
          todoRepository: context.read<TodoRepository>(),
          initialTodo: initialTodo,
        ),
        child: const EditTodoPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TodoFormBloc, TodoFormState>(
      listenWhen: (previous, current) =>
          previous.saveErrorMessageOrUpdatedTodosOption !=
              current.saveErrorMessageOrUpdatedTodosOption &&
          current.saveErrorMessageOrUpdatedTodosOption.fold(
              () => false,
              (a) => a.fold(
                    (l) => false,
                    (r) => true,
                  )),
      listener: (context, state) {
        state.saveErrorMessageOrUpdatedTodosOption.fold(
            () => null,
            (a) => a.fold(
                  (l) => null,
                  (r) => context
                      .read<TodoReaderBloc>()
                      .add(TodoReaderEvent.todoUpdated(r)),
                ));
        Navigator.pop(context);
      },
      child: const EditTodoView(),
    );
  }
}

class EditTodoView extends StatelessWidget {
  const EditTodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isSaving = context.select((TodoFormBloc bloc) => bloc.state.isSaving);
    final isNewTodo =
        context.select((TodoFormBloc bloc) => bloc.state.editTodo == null);
    final theme = Theme.of(context);
    final floatingActionButtonTheme = theme.floatingActionButtonTheme;
    final fabBackgroundColor = floatingActionButtonTheme.backgroundColor ??
        theme.colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isNewTodo
              ? l10n.editTodoAddAppBarTitle
              : l10n.editTodoEditAppBarTitle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: l10n.editTodoSaveButtonTooltip,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        backgroundColor:
            isSaving ? fabBackgroundColor.withOpacity(0.5) : fabBackgroundColor,
        onPressed: isSaving
            ? null
            : () => context
                .read<TodoFormBloc>()
                .add(const TodoFormEvent.saveRequsted()),
        child: isSaving
            ? const CupertinoActivityIndicator()
            : const Icon(Icons.check_rounded),
      ),
      body: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [_TitleField(), _DescriptionField()],
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleField extends StatelessWidget {
  const _TitleField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<TodoFormBloc>().state;
    final hintText = state.editTodo?.title ?? '';

    return TextFormField(
      key: const Key('editTodoView_title_textFormField'),
      initialValue: state.title,
      decoration: InputDecoration(
        enabled: !state.isSaving,
        labelText: l10n.editTodoTitleLabel,
        hintText: hintText,
      ),
      maxLength: 50,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]')),
      ],
      onChanged: (value) =>
          context.read<TodoFormBloc>().add(TodoFormEvent.titleEntered(value)),
    );
  }
}

class _DescriptionField extends StatelessWidget {
  const _DescriptionField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final state = context.watch<TodoFormBloc>().state;
    final hintText = state.editTodo?.description ?? '';

    return TextFormField(
      key: const Key('editTodoView_description_textFormField'),
      initialValue: state.description,
      decoration: InputDecoration(
        enabled: !state.isSaving,
        labelText: l10n.editTodoDescriptionLabel,
        hintText: hintText,
      ),
      maxLength: 300,
      maxLines: 7,
      inputFormatters: [
        LengthLimitingTextInputFormatter(300),
      ],
      onChanged: (value) => context
          .read<TodoFormBloc>()
          .add(TodoFormEvent.descriptionEntered(value)),
    );
  }
}
