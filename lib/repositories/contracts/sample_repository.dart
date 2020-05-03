import 'package:app_bloc_template/models/sample_model.dart';
import 'package:app_bloc_template/repositories/implementations/sample_repository_impl.dart';

class EventRepository {
  final eventImpl = EventRepositoryImpl();

  Future<SampleList> fetchEventList(SampleListRequest request) =>
      eventImpl.fetchEventList(request);
}
