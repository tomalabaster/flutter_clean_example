import '../entities/student.dart';

abstract class IStudentRepository {
  Student login(String email, String password);
}
