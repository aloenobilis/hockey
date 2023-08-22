class Team {
  int? id;
  String? name;
  String? abbreviation;
  String? teamName;
  String? locationName;
  Map<String, dynamic>? division;
  Map<String, dynamic>? conference;
  Map<String, dynamic>? franchise;
  Map<String, dynamic>? venue;
  String? shortName;
  int? franchiseId;
  bool? active;
  String? officialSiteUrl;
  String? firstYearOfPlay;

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
        venue = parsedJson['venue'],
        shortName = parsedJson['shortName'],
        franchiseId = parsedJson['franchiseId'],
        active = parsedJson['active'],
        officialSiteUrl = parsedJson['officialSiteUrl'],
        firstYearOfPlay = parsedJson['firstYearOfPlay'];
}
