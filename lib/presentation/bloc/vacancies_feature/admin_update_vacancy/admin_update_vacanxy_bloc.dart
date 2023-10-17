import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_update_vacanxy_event.dart';
part 'admin_update_vacanxy_state.dart';
part 'admin_update_vacanxy_bloc.freezed.dart';

class AdminUpdateVacanxyBloc extends Bloc<AdminUpdateVacanxyEvent, AdminUpdateVacanxyState> {
  AdminUpdateVacanxyBloc() : super(const AdminUpdateVacanxyState.initial()) {
    on<AdminUpdateVacanxyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
