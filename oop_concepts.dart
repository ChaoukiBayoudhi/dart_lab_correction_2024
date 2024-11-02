class Person{
  //int id;// id is a public property
  int _id;// id is a private property
  String name;
  DateTime? birthDay;//the birthday could be null
  //Constructor in case id is public
  //Person(this.id, this.name, this.birthDay);
  //if the id and the name are required
  //2 possibilities to instantiate a Person
  //Constructor in case id is public
  //Person({required this.id, required this.name, this.birthDay});
  //if the id is private
  Person({required int id, required this.name, this.birthDay}):_id=id;

  //getter
  int get id => _id;
  //setter
  set id(int value) => _id=value;

  void displayInfo(){
    print('Id = $id');
    print('Name = $name');
    if(birthDay !=null)
      print('BirthDay = $birthDay');
  }
}

class Employee extends Person{
  String jobTitle;
  double salary;
  DateTime hiredate;
  //constructor
  //The first possibility
  Employee({required super.id,
  required super.name,
  super.birthDay,
  required this.jobTitle,
  required this.salary,
  required this.hiredate
  });
  //The second possibility
  // Employee({required int id,
  // required String name,
  // DateTime? birthDay,
  // required this.jobTitle,
  // required this.salary,
  // required this.hiredate
  // }):super(name:name,id:id,birthDay:birthDay,);

//override this method displayInfo to fit the needs of the subclass
  @override
  void displayInfo() {
    super.displayInfo(); //call the method defined in the super class
    print('Job Title = $jobTitle');
    print('Salary = $salary');
    print('Hire Date = $hiredate');
  }
}

void main(){
  //1. Using the constructor with two arguments
  Person p1=Person(id: 1, name: "Mohamed");
  print(p1.id);// call the getter
  p1.id=2;// call the setter
  print(p1.id);
  Person p2= new Person(id: 1, name: "Mohamed"); //new is optional
  //2. Using the constructor with 3 parameters
  Person p3=Person(id: 1, name: "Mohamed", birthDay:DateTime.now());

  //call the displayInfo() function
  print('The P1 information :');
  p1.displayInfo();
  print('The P2 information :');
  p2.displayInfo();
  print('The P3 information :');
  p3.displayInfo();

  //create an instance of employee
  Employee e1=Employee(id: 1, name: "Bochra", jobTitle:"Software Engineer",salary:3540,hiredate:DateTime(2021,5,17));
  print('The e1 information :');
  e1.displayInfo();
}