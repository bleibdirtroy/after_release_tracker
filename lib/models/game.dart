import 'package:after_release_tracker/models/price_overview.dart';
import 'package:after_release_tracker/models/release_date.dart';

class Game {
  int steamAppid;
  String name;
  String requiredAge;
  String headerImage;
  PriceOverview priceOverview;
  ReleaseDate releaseDate;
  String steamDBCharts;

  Game(this.steamAppid, this.name, this.requiredAge, this.headerImage,
      this.priceOverview, this.releaseDate, this.steamDBCharts);
}
