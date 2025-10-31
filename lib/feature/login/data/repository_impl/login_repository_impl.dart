import 'package:personal_info_manager/feature/login/data/data_source/login_data_source.dart';
import 'package:personal_info_manager/feature/login/data/models/user_model.dart';
import 'package:personal_info_manager/feature/login/domain/entities/user_entity.dart';
import 'package:personal_info_manager/feature/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl  implements LoginRepository {
  final LoginDataSource loginDataSource;
  LoginRepositoryImpl(this.loginDataSource);
  @override
  Future<UserEntity> login(String username, String password) async{
  try {
   UserModel userModel= await loginDataSource.login(username, password);
    return userModel;
  } catch (e) {
    throw Exception('Login failed: ${e.toString()}');
  }
  }
   
}