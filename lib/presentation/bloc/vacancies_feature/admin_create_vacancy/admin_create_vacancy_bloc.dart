import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_create_vacancy_event.dart';
part 'admin_create_vacancy_state.dart';
part 'admin_create_vacancy_bloc.freezed.dart';

class AdminCreateVacancyBloc extends Bloc<AdminCreateVacancyEvent, AdminCreateVacancyState> {
  AdminCreateVacancyBloc() : super(const AdminCreateVacancyState.initial()) {
    on<AdminCreateVacancyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
