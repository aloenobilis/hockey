import 'package:flutter/material.dart';

import 'package:hockey/blocs/team_bloc.dart';
import 'package:hockey/blocs/team_provider.dart';
import 'package:hockey/classes/response.dart';
import 'package:hockey/models/team.dart';
import 'package:hockey/widgets/team_list.dart';
import 'package:hockey/widgets/title.dart';

class HomeScreen extends StatefulWidget {
  static const id = "home_screen";

  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final ScrollController controller = ScrollController();
  bool isLoading = false;
  String? errorMessage;
  List<Team> teams = [];
  List<int> teamIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> _range(int from, int to) =>
      List.generate(to - from + 1, (i) => i + from);
  TeamBloc? bloc;

  @override
  void initState() {
    super.initState();

    /// Initialize the bloc and initiate the first call to set teams to state.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc = TeamProvider.of(context);
      setTeamsToState(bloc!);
    });

    /// Add a functional listener to the ScrollController that is linked to the
    /// ``teamList`` ListView so that when the list is at the bottom the ``setTeamsToState``
    /// method is invoked which fetches "more" teams.
    controller.addListener(() {
      // if at the bottom load more data
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        setTeamsToState(bloc!);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /// Set the list of ``Team``'s to state using the inherited ``TeamBloc``.
  /// NOTE: the stateful team id's are passed onto the ``getTeams`` method call
  /// and THEN new team id's are generated and set to the team id's state. This
  /// is an important linear/consectutive step as only after the teams for the
  /// current list of id's have been fetched do we want to generate the next set
  /// of team id's wihch will be used on the next call.
  void setTeamsToState(TeamBloc bloc) async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });

      BlocResponse response = await bloc.getTeams(teamIds);
      if (response.payload != null && response.errorMessage == null) {
        List<int> newTeamIds = _range(teamIds.last + 1, teamIds.last + 10);

        setState(() {
          isLoading = false;
          teams.addAll(response.payload);
          teamIds = newTeamIds;
        });
      } else {
        setState(() {
          isLoading = false;
          errorMessage = response.errorMessage;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title('Teams'),
      ),
      body: Container(
          child: teamList(teams, controller, isLoading, errorMessage)),
    );
  }
}
