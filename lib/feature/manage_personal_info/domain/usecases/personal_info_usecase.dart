import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/repositories/personal_info_repository.dart';

class PersonalInfoUsecase {
  final PersonalInfoRepository repository;
  PersonalInfoUsecase(this.repository);

  Future <List<PersonalInfoEntity>> fetchPersonalInfoList()async{
    return await repository.fetchPersonalInfo();
  }
}