import 'package:dartz/dartz.dart';

import '../../infrastructure/task/dto/task/task_dto.dart';

abstract class TaskRepository {
  Future<Either<String, TaskDto>> addTask(
      {required String title, required String description});
  Future<List<TaskDto>> getAllTask();
  Future<Either<String,bool>> deleteTask({required String taskId});
    Future<Either<String, String>> updateTask(
      {required TaskDto task});
}
