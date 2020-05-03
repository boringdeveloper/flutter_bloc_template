// Request

class SampleListRequest {
  final String searching, limit, offset;

  SampleListRequest({this.searching, this.limit, this.offset});

  toMap() => {"searching": searching, "limit": limit, "offset": offset};

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SampleListRequest &&
          runtimeType == other.runtimeType &&
          searching == other.searching &&
          limit == other.limit &&
          offset == other.offset;

  @override
  int get hashCode => searching.hashCode ^ limit.hashCode ^ offset.hashCode;
}

// Response

class SampleList {
  String status, totalResults;
  List<SampleItem> events;

  SampleList({this.status, this.totalResults, this.events});

  SampleList.fromMap(Map<String, dynamic> data) {
    status = data["state"] ?? "success";
    totalResults = data["counter"];

    if (data['data'] != null) {
      events = new List<SampleItem>();

      data['data'].forEach((x) {
        SampleItem event = new SampleItem.fromMap(x);
        events.add(event);
      });
    }
  }
}

class SampleItem {
  String id, code, name, banner, shortDesc;

  SampleItem({this.id, this.code, this.name, this.banner, this.shortDesc});

  SampleItem.fromMap(Map data) {
    id = data['id'];
    code = data['e_code'];
    name = data['e_name'];
    banner = data['e_banner'];

    // Refactor desc
    dynamic rawString = data['e_short_desc'];
    const start = "\">";
    const end = "</";

    final startIndex = rawString.indexOf(start);
    final endIndex = rawString.indexOf(end, startIndex + start.length);

    String subString = rawString.substring(startIndex + start.length, endIndex);

    shortDesc = subString.length > 150
        ? subString.substring(0, 150) + "..."
        : subString;
  }
}
