import 'dart:io';
void main(){
  print('Enter the student id :');
  int id= int.parse(stdin.readLineSync()!);
  print('Enter the student name :');
  String? name= stdin.readLineSync();
  //or
  //String name= stdin.readLineSync()!;

  print('Enter the student birthday ((YYYY-MM-DD)) :');
  //DateFormat formatter=DateFormat('yyyy/MM/dd'); 
  DateTime birthday= DateTime.parse(stdin.readLineSync()!);

  print('the student info [id=$id, name=$name, birthday=$birthday]');
  
}