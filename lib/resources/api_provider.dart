import 'package:dio/dio.dart';
import 'package:hockey/classes/response.dart';
import 'package:hockey/models/team.dart';

class ApiProvider {
  // https://statsapi.web.nhl.com/api/v1/teams?teamId=1,2,,,,,,,,,,
  // https://statsapi.web.nhl.com/api/v1/teams/2
  final dio = Dio();

  /// Convert a list of int to a string csv
  String list2csv(List<int> teamIds) {
    String teamIdParam = '';
    for (var i = 0; i < teamIds.length; i++) {
      if (i == teamIds.length - 1) {
        teamIdParam += teamIds[i].toString();
      } else {
        teamIdParam += '${teamIds[i]},';
      }
    }
    return teamIdParam;
  }

  Future<ApiResponse> getTeams(List<int> teamIds) async {
    List<Team> teams = [];

    String teamIdParam = list2csv(teamIds);

    try {
      final response = await dio
          .get("https://statsapi.web.nhl.com/api/v1/teams?teamId=$teamIdParam");

      if (response.statusCode == 200) {
        var body = response.data;
        for (var i = 0; i < body['teams'].length; i++) {
          try {
            teams.add(Team.fromJson(body['teams'][i]));
          } catch (err) {
            return ApiResponse(
                payload: null, errorMessage: "Error serializing team.");
          }
        }
        return ApiResponse(payload: teams);
      }
    } catch (err) {
      return ApiResponse(payload: null, errorMessage: "No more teams.");
    }

    return ApiResponse(payload: null, errorMessage: "Could not retreive teams");
  }
}
