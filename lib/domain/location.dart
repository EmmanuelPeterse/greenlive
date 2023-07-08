import 'location_fact.dart';

class Location{
  late String names;
  late  String imagePath;
  
  late List<LocationFact> fact;

  Location({required this.names, required this.imagePath ,required this.fact});


   static List<Location> fetchAll() {
    return [
      Location(names: 'Arashiyama Bamboo Grove', imagePath: 'assets/images/item/plant1.png', fact: [
        LocationFact(mamess:'Summary',
           titles: 'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sights pleasures extend beyond the visual realm.'),
        LocationFact( 

         titles: 'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.', mamess: 'How to Get There', ),
      ]),
    ];
  }

}

