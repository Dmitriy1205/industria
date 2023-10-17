import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_delete_vacancy_event.dart';
part 'admin_delete_vacancy_state.dart';
part 'admin_delete_vacancy_bloc.freezed.dart';

class AdminDeleteVacancyBloc extends Bloc<AdminDeleteVacancyEvent, AdminDeleteVacancyState> {
  AdminDeleteVacancyBloc() : super(const AdminDeleteVacancyState.initial()) {
    on<AdminDeleteVacancyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
