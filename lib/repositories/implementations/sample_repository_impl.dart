import 'package:dio/dio.dart';
import 'package:app_bloc_template/models/sample_model.dart';
import 'package:app_bloc_template/utilities/api.dart';
import 'package:app_bloc_template/utilities/api_uris.dart';

class EventRepositoryImpl {
  final Api api = Api();

  Future<SampleList> fetchEventList(SampleListRequest request) async {
    final Response response = await api.post(
        ApiUris.PROJECT_KEY + ApiUris.SAMPLE_ENDPOINT, request.toMap());

    return SampleList.fromMap(response.data);
  }
}
