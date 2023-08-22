import 'package:test/test.dart';
import 'package:hockey/models/team.dart';

void main() {
  late Map<String, dynamic> fixture;
  setUp(() {
    fixture = {
      "id": 2,
      "name": "New York Islanders",
      "link": "/api/v1/teams/2",
      "venue": {
        "name": "UBS Arena",
        "link": "/api/v1/venues/null",
        "city": "Elmont",
        "timeZone": {"id": "America/New_York", "offset": -4, "tz": "EDT"}
      },
      "abbreviation": "NYI",
      "teamName": "Islanders",
      "locationName": "New York",
      "firstYearOfPlay": "1972",
      "division": {
        "id": 18,
        "name": "Metropolitan",
        "nameShort": "Metro",
        "link": "/api/v1/divisions/18",
        "abbreviation": "M"
      },
      "conference": {
        "id": 6,
        "name": "Eastern",
        "link": "/api/v1/conferences/6"
      },
      "franchise": {
        "franchiseId": 22,
        "teamName": "Islanders",
        "link": "/api/v1/franchises/22"
      },
      "shortName": "NY Islanders",
      "officialSiteUrl": "http://www.newyorkislanders.com/",
      "franchiseId": 22,
      "active": true
    };
  });

  test('Team is created from json', () {
    Team team = Team.fromJson(fixture);
    expect(team.runtimeType, Team);
  });
}
