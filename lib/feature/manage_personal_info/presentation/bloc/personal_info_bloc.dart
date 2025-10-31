import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/usecases/personal_info_usecase.dart';

part 'personal_info_event.dart';
part 'personal_info_state.dart';
part 'personal_info_bloc.freezed.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  final PersonalInfoUsecase usecase;
  PersonalInfoBloc(this.usecase) : super(PersonalInfoState()) {
    on<FetchPersonalInfoList>(_fetchPersonalInfoList);
  }

  _fetchPersonalInfoList(
    FetchPersonalInfoList event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final List<PersonalInfoEntity> personalDetail = await usecase
          .fetchPersonalInfoList();

   
      emit(
        state.copyWith(
          isLoading: false,
          personalDetails: personalDetail,
          msg: '',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          msg: 'Error occurs while fetching personal details',
        ),
      );
    }
  }
}
