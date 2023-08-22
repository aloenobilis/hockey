import 'package:hockey/classes/response.dart';
import 'package:hockey/models/team.dart';
import 'package:test/test.dart';
import 'package:hockey/resources/api_provider.dart';

/// NOTE: tests against the live statsapi.web.nhl.com api

void main() {
  late ApiProvider api;
  setUp(() {
    api = ApiProvider();
  });

  test('Get teams', () async {
    ApiResponse response = await api.getTeams([1, 2, 3]);
    expect(response.errorMessage, isNull);
    expect(response.payload, isNotNull);
    expect(response.payload.runtimeType, List<Team>);
  });

  test('Get teams by id', () async {
    ApiResponse response = await api.getTeamById(1);
    expect(response.errorMessage, isNull);
    expect(response.payload, isNotNull);
    expect(response.payload.runtimeType, Team);
  });
}
