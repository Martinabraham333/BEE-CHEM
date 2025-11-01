import 'package:personal_info_manager/feature/manage_personal_info/data/data_source/personal_info_source.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/role_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/repositories/personal_info_repository.dart';

class PersonalInfoRepositoryImpl extends PersonalInfoRepository {
  final PersonalInfoSource dataSource;
  PersonalInfoRepositoryImpl(this.dataSource);
  @override
  Future<List<PersonalInfoEntity>> fetchPersonalInfo() async {
    try {
      final List<PersonalInfoEntity> data = await dataSource
          .fetchPersonalInfo();

      return data;
    } catch (e) {
      throw Exception('Error while fetching personnal details');
    }
  }

  @override
  Future<List<RoleEntity>> fetchRoleDetails() async {
    try {
      final List<RoleEntity> data = await dataSource.fetchRoles();

      return data;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  @override
  Future<bool> saveDetails(Map<String, dynamic> saveData) async {
    try {
      final result = await dataSource.saveDeatils(saveData);
      return result;
    } catch (e) {
       print(e);
      throw Exception(e);
    }
  }
}
