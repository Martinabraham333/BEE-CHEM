import 'package:get_it/get_it.dart';
import 'package:personal_info_manager/core/api_client.dart';
import 'package:personal_info_manager/feature/login/data/data_source/login_data_source.dart';
import 'package:personal_info_manager/feature/login/data/repository_impl/login_repository_impl.dart';
import 'package:personal_info_manager/feature/login/domain/repositories/login_repository.dart';
import 'package:personal_info_manager/feature/login/domain/usecases/login_usecase.dart';
import 'package:personal_info_manager/feature/login/presentation/bloc/login_bloc.dart';
import 'package:personal_info_manager/feature/manage_personal_info/data/data_source/personal_info_source.dart';
import 'package:personal_info_manager/feature/manage_personal_info/data/repository_impl/personal_info_repository_impl.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/repositories/personal_info_repository.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/usecases/personal_info_usecase.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/bloc/personal_info_bloc.dart';

final sl = GetIt.instance;

Future<void> iniDependency() async {

  //  Core
  sl.registerLazySingleton(() => ApiClient());

  //  Login Feature
  sl.registerFactory(() => LoginBloc(sl()));
  sl.registerLazySingleton(() => LoginUsecase(sl()));
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(sl()));
  sl.registerLazySingleton(() => LoginDataSource(sl()));

  //  Personal Info Feature
  sl.registerFactory(() => PersonalInfoBloc(sl()));
  sl.registerLazySingleton(() => PersonalInfoUsecase(sl()));
  sl.registerLazySingleton<PersonalInfoRepository>(() => PersonalInfoRepositoryImpl(sl()));
  sl.registerLazySingleton(() => PersonalInfoSource(sl()));
}
