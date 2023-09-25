class JobFilters{
  final String? area;
  final List<String> jobTypes;
  final String? city;
  final String keyword;
  final int page;
  final int count;

  JobFilters({
    this.area,
    this.jobTypes = const [],
    this.city,
    required this.keyword,
    required this.page,
    required this.count,
  });
}