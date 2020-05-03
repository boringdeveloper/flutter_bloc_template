import 'package:meta/meta.dart';

class StandardError implements Exception {
  final String message;

  StandardError({@required this.message});

  @override
  String toString() => message;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
      other is StandardError &&
      runtimeType == other.runtimeType &&
      message == other.message;

  @override
  int get hashCode => message.hashCode;
}