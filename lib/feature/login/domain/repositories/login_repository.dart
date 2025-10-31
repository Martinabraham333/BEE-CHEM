import 'package:personal_info_manager/feature/login/domain/entities/user_entity.dart';

abstract  class LoginRepository {
  Future<UserEntity> login(String email, String password);
}