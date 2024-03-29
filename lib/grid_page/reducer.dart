import 'package:fish_demo/api.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<GridState> buildReducer() {
  return asReducer(
    <Object, Reducer<GridState>>{
      GridAction.action: _onAction,
      GridAction.action: _onLoadData,
    },
  );
}

GridState _onAction(GridState state, Action action) {
  final GridState newState = state.clone();
  return newState;
}

GridState _onLoadData(GridState state, Action action) {
  final GridState newState = state.clone();
  newState.models = Api().getGridData();
  return newState;
}
