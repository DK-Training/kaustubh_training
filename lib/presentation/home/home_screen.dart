import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/task/list_tasks/list_task_bloc.dart';
import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../../infrastructure/task/dto/task/task_dto.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);
    return BlocProvider(
      create: (context) => ListTaskBloc(
        ListTaskState.initial(appStateNotifier: appStateNotifier),
      )..add(const ListTaskEvent.getAllTasks()),
      child: const HomeScreenConsumer(),
    );
  }
}

class HomeScreenConsumer extends StatelessWidget {
  const HomeScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AppStateNotifier appStateNotifier = Provider.of<AppStateNotifier>(context);
    return BlocConsumer<ListTaskBloc, ListTaskState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.primary,
              titleSpacing: 8.w,
              title: Text(
                AuthConstants.homePageTitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 14.5.sp),
              ),
              actions: [
                SizedBox(
                  width: 8.w,
                )
              ],
            ),
            body: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 2.h,
                );
              },
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                final TaskDto task = state.tasks[index];
                return Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 2, color: Colors.black45)
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(task.title),
                              Text(
                                task.description,
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 12.sp),
                              ),
                            ]),
                      ),
                      IconButton(
                          onPressed: () async {
                            TextEditingController titleController =
                                TextEditingController(text: task.title);
                            TextEditingController descriptionController =
                                TextEditingController(text: task.description);
                            final TaskDto? updatedTask =
                                await showDialog<TaskDto>(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Update Task'),
                                        content: SizedBox(
                                          height: 300,
                                          child: Column(children: [
                                            TextField(
                                              controller: titleController,
                                              decoration: const InputDecoration(
                                                  hintText: "Title"),
                                            ),
                                            TextField(
                                              controller: descriptionController,
                                              maxLines: 10,
                                              decoration: const InputDecoration(
                                                  hintText: "Description"),
                                            )
                                          ]),
                                        ),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: const Text(
                                              'Update',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              final TaskDto updatedTask =
                                                  task.copyWith(
                                                title: titleController.text,
                                                description:
                                                    descriptionController.text,
                                              );
                                              Navigator.of(context)
                                                  .pop(updatedTask);
                                            },
                                          )
                                        ],
                                      );
                                    });
                            if (updatedTask != null) {
                              context.read<ListTaskBloc>().add(
                                  ListTaskEvent.updateTask(task: updatedTask));
                            }
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).primaryColor,
                          )),
                      IconButton(
                          onPressed: () {
                            context
                                .read<ListTaskBloc>()
                                .add(ListTaskEvent.deleteTask(taskId: task.id));
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Theme.of(context).errorColor,
                          ))
                    ],
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.add,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 15,
              onPressed: (() async {
                await navigator<NavigationService>()
                    .navigateTo(CoreRoute.addTask);
                context.read<ListTaskBloc>().add(ListTaskEvent.getAllTasks());
              }),
            ));
      },
    );
  }
}
