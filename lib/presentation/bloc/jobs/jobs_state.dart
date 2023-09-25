part of 'jobs_bloc.dart';

@freezed
class JobsState with _$JobsState {
  const JobsState._();

  JobFilters? get filter => maybeMap(
      loaded: (state) => state.filter,
      orElse: () => null);

  const factory JobsState.initial() = _InitialState;
  const factory JobsState.loaded({required List<JobOffer> jobs, required JobFilters filter}) = _LoadedState;
}
