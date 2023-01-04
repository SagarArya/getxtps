import '../../data/model/model.dart';
import 'package:meta/meta.dart';
import '../../data/provider/api.dart';

class MyRepository {
  final MyApiClient apiClient;

  MyRepository({required this.apiClient}) : assert(apiClient != null);

  Future<List<Model>> getWord() {
    return apiClient.getModel();
  }
}
