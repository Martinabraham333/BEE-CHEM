import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/role_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/repositories/personal_info_repository.dart';

class PersonalInfoUsecase {
  final PersonalInfoRepository repository;
  PersonalInfoUsecase(this.repository);

  Future <List<PersonalInfoEntity>> fetchPersonalInfoList()async{
    try {
      return await repository.fetchPersonalInfo();
    } catch (e) {
        throw Exception('Error while fetching personnal details');
    }
  }
  Future <List<RoleEntity>> fetchRoleDetails()async{
  try {
     return await repository.fetchRoleDetails();
  } catch (e) {
    print(e);
     throw Exception('Error while fetching role details');
  }
  }
}