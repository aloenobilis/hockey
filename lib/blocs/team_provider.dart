import 'package:flutter/material.dart';
import 'team_bloc.dart';

class TeamProvider extends InheritedWidget {
  final bloc = TeamBloc();

  TeamProvider({Key? key, Widget? child}) : super(key: key, child: child!);

  @override
  // ignore: avoid_renaming_method_parameters
  bool updateShouldNotify(_) => true;
  static TeamBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<TeamProvider>())!.bloc;
  }
}
