//Organism class
abstract class Organism implements Eater,WarmBlooded{
  String get type;
}

//Interfaces
class Eater{
  String eats()=>"Eats";
}

class WarmBlooded{
  String blood() => "Warm blooded";
}

