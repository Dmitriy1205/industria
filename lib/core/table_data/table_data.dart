class TableData<T>{
  final int totalElementCounts;
  final int numberOfPages;
  final int currentPage;
  final T element;

  const TableData({
    required this.totalElementCounts,
    required this.numberOfPages,
    required this.currentPage,
    required this.element,
  });
}