class Team {
  int? id;
  String? name;
  String? abbreviation;
  String? teamName;
  String? locationName;
  Map<String, dynamic>? division;
  Map<String, dynamic>? conference;
  Map<String, dynamic>? franchise;
  String? shortName;
  int? franchiseId;
  bool? active;

  // API
  Team.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'],
        abbreviation = parsedJson['abbreviation'],
        teamName = parsedJson['teamName'],
        locationName = parsedJson['locationName'],
        division = parsedJson['division'],
        conference = parsedJson['conference'],
        franchise = parsedJson['franchise'],
        shortName = parsedJson['shortName'],
        franchiseId = parsedJson['franchiseId'],
        active = parsedJson['active'];
}
