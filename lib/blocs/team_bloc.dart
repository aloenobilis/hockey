import 'package:hockey/classes/response.dart';
import 'package:hockey/resources/api_provider.dart';

class TeamBloc {
  ApiProvider api = ApiProvider();

  Future<BlocResponse> getTeams(List<int> teamIds) async {
    ApiResponse response = await api.getTeams(teamIds);
    return BlocResponse.fromApiResponse(response);
  }
}
