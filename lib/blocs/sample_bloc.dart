import 'package:rxdart/rxdart.dart';

// Models
import 'package:app_bloc_template/models/sample_model.dart';

// Repository
import 'package:app_bloc_template/repositories/contracts/sample_repository.dart';

class SampleBloc {
  final eventRepository = EventRepository();

  final _samples = PublishSubject<SampleList>();

  Observable<SampleList> get events => _samples.stream;

  fetchSampleList(SampleListRequest request) async {
    try {
      SampleList eventList = await eventRepository.fetchEventList(request);
      _samples.sink.add(eventList);
    } catch (error) {
      print("error: $error");
    }
  }

  dispose() {
    _samples.close();
  }
}

final sampleBloc = SampleBloc();
