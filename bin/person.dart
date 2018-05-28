import 'organism.dart';

class Person extends Organism
{
  String eats()=>"hukula";
  String blood()=>"bleeds";
  
  //Class members
  int age;
  double weight;
  String name = "No name";
  List<String> favoriteFoods = [];

  // double get weight => weight; //Getter for the weight
  // set weight(double w) => (weight = weight>0.0 ? weight : 0.1); //Setter for the weight

  // int get age => age;//Getter for the age

  //Setter for the age
  // set age(int age_input){
  //   if (age <= 0) {
  //     age = 1;
  //   }
  // }

  //Static class member
  static int numberOfPeople = 0;

  //Set the type
  String get type => "Person";

  //Constructor
  Person(){
    numberOfPeople++;
  }

  //Constructor override ~ named constructor
  Person.initValues(int age,double weight,[String name, List<String> favoriteFoods]){
    this.age = age;
    this.weight = weight;
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
    info += "${this.eats()} Favorite foods : ";
    
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