class Post {
  final dynamic cases;
  final String state;
  final dynamic deaths;

  Post({
    required this.cases,
    required this.state,
    required this.deaths,
  });

  factory Post.fromJSON({required Map<String, dynamic> json}) {
    return Post(
      cases: json['cases'],
      state: json['state'],
      deaths: json['deaths'],
    );
  }
}

class Data {
  final dynamic cases;
  //final dynamic state;
  final dynamic death;
  final dynamic continent;
  // final dynamic countries;
  Data({
    required this.cases,
    //required this.state,
    required this.death,
    required this.continent,
    // required this.countries,
  });

  factory Data.fromJSON({required Map<String, dynamic> json}) {
    return Data(
      cases: json['cases'],
      //state: json['state'],
      death: json['deaths'],
      continent: json['continent'],
      // countries: json['countries'],
    );
  }
}
