import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';
import '../../domain/task/task_repository.dart';
import 'dto/task/task_dto.dart';

class ITaskRepository extends TaskRepository {
  @override
  Future<Either<String, TaskDto>> addTask(
      {required String title, required String description}) async {
    try {
      Uuid uid = Uuid();
      final id = uid.v4();
      final userId = FirebaseAuth.instance.currentUser!.uid;
      TaskDto task = TaskDto(
          id: id, description: description, title: title, userId: userId);
      FirebaseFirestore.instance.collection('tasks').doc(id).set(task.toJson());
      return right(task);
    } catch (error) {
      return left('Unable to create task');
    }
  }

  @override
  Future<List<TaskDto>> getAllTask() async {
    try {
      final userId = FirebaseAuth.instance.currentUser!.uid;
      final QuerySnapshot<Map<String, dynamic>> query = await FirebaseFirestore
          .instance
          .collection('tasks')
          .where('userId', isEqualTo: userId)
          .get();
      List<TaskDto> tasks = [];
      for (int index = 0; index < query.size; index++) {
        final doc = query.docs[index];
        final TaskDto task = TaskDto.fromJson(doc.data());
        tasks.add(task);
      }
      return tasks;
    } catch (error) {
      return [];
    }
  }

  @override
  Future<Either<String, bool>> deleteTask({required String taskId}) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).delete();
      return right(true);
    } catch (error) {
      return left('Failed');
    }
  }
}
