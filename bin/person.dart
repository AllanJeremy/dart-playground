class Person
{
  //Class members
  int _age;
  double _weight;
  String name = "No name";
  List<String> favoriteFoods = [];

  double get weight => _weight; //Getter for the weight
  set weight(double w) => (_weight = _weight>0.0 ? _weight : 0.1); //Setter for the weight

  int get age => _age;//Getter for the age

  //Setter for the age
  set age(int age_input){
    if (_age <= 0) {
      _age = 1;
    }
  }

  //Static class member
  static int numberOfPeople = 0;

  //Constructor
  Person(){
    numberOfPeople++;
  }

  //Constructor override ~ named constructor
  Person.initValues(int age,double weight,[String name, List<String> favoriteFoods]){
    this._age = age;
    this._weight = weight;
    this.name = name;
    this.favoriteFoods = favoriteFoods;
    
    numberOfPeople++;
  }

  //[static function] Get the number of people created
  static int getNumberOfPeople(){
    return numberOfPeople;
  }

  //Introduce self
  String introduceSelf(){
    return "Hi, my name is $name, nice to meet you";
  }

  //Returns the information of the person
  String info(){
    String info = "Name : $name\n";
    info += "Age : ${age.toString()}\n";
    info += "Favorite foods : ";
    
    //If there are any favorite foods
    if(this.favoriteFoods.length>0){
      String favFoodList = "";
      
      for(int i=0; i<this.favoriteFoods.length; i++){
        favFoodList += "${favoriteFoods[i]}  ";
      }

      //Comma separated foods
      favFoodList = favFoodList.trim().replaceAll("  ",", ");
      info+= "$favFoodList\n";
    }else{
      info += "No favorite foods \n";
    }

    info += "Weight : ${weight.toString()} kgs\n";
    return info;
  }
}