import 'hello.dart';

void main()
{
  print(naySayer("Can I have some food"));
  // querySelector("#Something")
  String name = "Allan Jeremy";
  String celebrity = "Allan Jeremy";
  List favFoods = ["Samosa","Chapati"];
  Map someMap = {"Home":"Embakasi", "Girlfriend":"Tina"};
  String message = "Hello world $name and I love eating ${favFoods[0]}s and ${favFoods[1]}  ";
  print(message);
  print("I am currently living in ${someMap["Home"]} and dating a girl called ${someMap["Girlfriend"]}");


  print("is $name  a celebrity?");
  print(name.compareTo(celebrity)==0);
  print(message.contains('worl  dasd'));
  print(message.indexOf('world'));
  
  List hmm = message.split(" ");
  print(hmm);

  print(message.substring(0,4));
  print("Uppercase message (${message.length})char long: ${message.toUpperCase()}");
  print("Trimmed message (${message.trim().length})char long: ${message.trim()}");
  print("Is empty ${"s".isEmpty}");

  print("Get sum : ${getSum(1,3)}");

  lambda(message) => "Message : $message";
  print(lambda("Hey how's it going"));
  print ("Test : ${test("Come on",lambda)}");
}

String test(String text,function)
{
  return function(text);
}
int getSum(int num1,[int num2=0])
{
  return (num1+num2);
}