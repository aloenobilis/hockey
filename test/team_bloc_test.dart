import 'package:hockey/classes/response.dart';
import 'package:hockey/models/team.dart';
import 'package:test/test.dart';
import 'package:hockey/blocs/team_bloc.dart';

/// NOTE: tests against the live statsapi.web.nhl.com api

void main() {
  late TeamBloc bloc;
  setUp(() {
    bloc = TeamBloc();
  });

  test('Get teams', () async {
    ApiResponse response = await bloc.getTeams([1, 2, 3]);
    expect(response.errorMessage, isNull);
    expect(response.payload, isNotNull);
    expect(response.payload.runtimeType, List<Team>);
  });

  test('Get teams by id', () async {
    ApiResponse response = await bloc.getTeamById(1);
    expect(response.errorMessage, isNull);
    expect(response.payload, isNotNull);
    expect(response.payload.runtimeType, Team);
  });
}
