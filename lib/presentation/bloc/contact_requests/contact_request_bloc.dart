import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/contact_requests/contact_requests.dart';

import '../../../domain/repositories/contact_request/contact_request_repository_contract.dart';

part 'contact_request_state.dart';

part 'contact_request_event.dart';

part 'contact_request_bloc.freezed.dart';

class ContactRequestBloc
    extends Bloc<ContactRequestEvent, ContactRequestState> {
  final ContactRequestsRepository contactRequestsRepository;

  ContactRequestBloc({required this.contactRequestsRepository})
      : super(const ContactRequestState.initial()) {
    on<ContactRequestEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(
          ContactRequestEvent event, Emitter<ContactRequestState> emit) =>
      event.map(sendContactRequest: (e) => _sendContactRequest(e, emit));

  Future<void> _sendContactRequest(
      _ContactRequestEvent event, Emitter<ContactRequestState> emit) async {
    emit(ContactRequestState.loading());
    try {
      print('1');
      await contactRequestsRepository.sendContactRequest(
          contactRequests: event.contactRequests);
      print('2');

      emit(ContactRequestState.success());
      await Future.delayed(Duration(seconds: 3));
      emit(ContactRequestState.initial());
    } on Object {
      emit(ContactRequestState.error());
      await Future.delayed(Duration(seconds: 3));
      emit(ContactRequestState.initial());
    }
  }
}
