import 'package:personal_info_manager/feature/manage_personal_info/data/data_source/personal_info_source.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/repositories/personal_info_repository.dart';

class PersonalInfoRepositoryImpl extends PersonalInfoRepository {
  final PersonalInfoSource dataSource;
  PersonalInfoRepositoryImpl(this.dataSource);
  @override
  Future<List<PersonalInfoEntity>> fetchPersonalInfo() async {
    final List<PersonalInfoEntity> data = await dataSource.fetchPersonalInfo();

    return data;
  }
}
