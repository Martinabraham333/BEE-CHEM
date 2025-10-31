
import 'package:personal_info_manager/feature/login/domain/entities/user_entity.dart';
import 'package:personal_info_manager/feature/login/domain/repositories/login_repository.dart';

class LoginUsecase {
  final LoginRepository repository;
  LoginUsecase(this.repository);

  Future <UserEntity> execute(String email, String password)async{
    return await repository.login(email, password);
  }
}