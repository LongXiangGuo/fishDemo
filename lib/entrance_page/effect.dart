
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action; //注意1
import 'action.dart';
import 'state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
    // EntranceAction.action: _onOpenGrid,
     EntranceAction.openGrid: _onOpenGrid,
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {}

///跳转方法实现
void _onOpenGrid(Action action, Context<EntranceState> ctx) {
  Navigator.of(ctx.context).pushNamed("grid_page", arguments: null);
}

