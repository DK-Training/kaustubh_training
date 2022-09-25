import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
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
}
