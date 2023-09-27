part of 'contact_request_bloc.dart';


@freezed
class ContactRequestState with _$ContactRequestState {
  const factory ContactRequestState.initial() = _InitialState;
  const factory ContactRequestState.loading() = _LoadingState;
  const factory ContactRequestState.error() = _ErrorState;
  const factory ContactRequestState.success() = _SuccessState;
}
