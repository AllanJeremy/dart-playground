import 'person.dart';

class Athlete extends Person{
  String sport = "Running";

  String info(){
    String info = "Hi, I am an athlete. \n"+super.info();
    return info;
  }

  //Constructor
  Athlete(){
    Person.numberOfPeople++;
  }

  //Constructor override
  Athlete.initValues(int age,double weight,String name,[List<String> favoriteFoods])
  {
    this.age = age;
    this.weight = weight;
    this.name = name;
    this.favoriteFoods = favoriteFoods;
    Person.numberOfPeople++;
  }
}