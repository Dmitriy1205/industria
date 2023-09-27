part of 'contact_request_bloc.dart';

@freezed
class ContactRequestEvent with _$ContactRequestEvent {
  const factory ContactRequestEvent.sendContactRequest(
      {required ContactRequests contactRequests}) = _ContactRequestEvent;
}
