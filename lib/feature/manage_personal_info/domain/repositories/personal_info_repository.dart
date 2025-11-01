import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/role_entity.dart';

abstract  class PersonalInfoRepository {
  Future<List<PersonalInfoEntity>>fetchPersonalInfo();
  Future<List<RoleEntity>>fetchRoleDetails();
}