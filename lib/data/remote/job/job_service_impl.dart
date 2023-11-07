import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/data/remote/job/job_service_contract.dart';
import 'package:industria/domain/entities/job_filters/job_filters.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';

class JobServiceImpl implements JobService {
  final Algolia algolia;
  final FirebaseFirestore db;

  @override
  Future<List<JobOffer>> findJobOffers({required JobFilters filter}) async {
    final index = algolia.index("dev_jobs");
    AlgoliaQuery currentQuery = index.query(filter.keyword);
    final jobTypesFacet = filter.jobTypes.map((e) => 'jobType:"$e"').toList();
    final cityFacet = filter.city == null ? null : 'city:"${filter.city}"';
    final areaFacet = filter.area == null ? null : 'area:"${filter.area}"';
    final facet = _facetFromArrayOfParams(
        [jobTypesFacet, cityFacet, areaFacet].where((e) => e != null).toList());
    if(facet.isNotEmpty){
      print('facet $facet');
      currentQuery = currentQuery.filters(facet);
    }
    currentQuery =
        currentQuery.setHitsPerPage(filter.count).setPage(filter.page);
    final results = await currentQuery.getObjects();
    return results.hits.map((e) => JobOffer.fromJson(e.data)).toList();
  }

  String _facetFromArrayOfParams(List values) {
    List<String> andParts = [];
    for (var value in values) {
      if (value is List && value.isNotEmpty) {
        if(value.length == 1){
          andParts.add(value.join(" OR "));
        }else{
          andParts.add("(${value.join(" OR ")})");
        }
      } else if(value is String) {
        andParts.add(value);
      }
    }
    return andParts.join(" AND ");
  }

  @override
  Future<JobOffer?> getJobOfferById({required String id}) async{
    final response = await db.collection(FirestoreCollections.jobs).doc(id).get();
    return JobOffer.fromJson(response.data()!);
  }

  JobServiceImpl({
    required this.algolia,
    required this.db,
  });
}
