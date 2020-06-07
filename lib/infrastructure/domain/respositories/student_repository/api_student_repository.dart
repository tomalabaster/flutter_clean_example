import 'package:flutter_clean_example/core/domain/entities/student.dart';
import 'package:flutter_clean_example/core/domain/repositories/istudent_repository.dart';

class ApiStudentRepository implements IStudentRepository {
  @override
  Student login(String email, String password) {
    return Student();
  }
}
