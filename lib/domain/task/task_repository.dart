import 'package:dartz/dartz.dart';

import '../../infrastructure/task/dto/task/task_dto.dart';

abstract class TaskRepository {
  Future<Either<String, TaskDto>> addTask(
      {required String title, required String description});
}
