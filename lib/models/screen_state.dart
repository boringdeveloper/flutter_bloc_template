import 'package:app_bloc_template/utilities/constant.dart';

class ScreenState {
  final Exception error;
  final States state;

  ScreenState(this.state, {this.error});

  @override
  String toString() {
    return state.toString();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScreenState &&
          runtimeType == other.runtimeType &&
          error == other.error &&
          state == other.state;

  @override
  int get hashCode => error.hashCode ^ state.hashCode;
}
