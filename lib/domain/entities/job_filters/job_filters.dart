class JobFilters{
  final String? area;
  final List<String> jobTypes;
  final String? city;
  final String keyword;
  final int page;
  final int count;

  factory JobFilters.initial(){
    return JobFilters(keyword: "", page: 0, count: 10);
  }

  JobFilters({
    this.area,
    this.jobTypes = const [],
    this.city,
    required this.keyword,
    required this.page,
    required this.count,
  });

  JobFilters copyWith({
    String? area,
    List<String>? jobTypes,
    String? city,
    String? keyword,
    int? page,
    int? count,
  }) {
    return JobFilters(
      area: area ?? this.area,
      jobTypes: jobTypes ?? this.jobTypes,
      city: city ?? this.city,
      keyword: keyword ?? this.keyword,
      page: page ?? this.page,
      count: count ?? this.count,
    );
  }
}