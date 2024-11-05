import 'dart:io';
int max(int x, int y){
  if(x > y)
    return x;
  return y;
}
//using the arrow
int max2(int x, int y) =>(x > y)?x:y;
//default parameters values
int sum2( {int x=2, int y=5})=>x+y;
//we can call the sum2 in 4 ways:
//1-sum2() ==> x=2, y=5
//2-sum2(x:11) ==> x=11, y=5
//3-sum2(y:17) ==> x=2, y=17
//3-sum2(x:11, y:15) ==> x=11, y=15

int sum3( int z,{int x=2, int y=5})=>x+y+z;

List<int> removeRedundance_v1(List<int> L,int x){
  L.removeWhere((e)=>e==x);
  return L;
}
List<int> removeRedundance_v2(List<int> L,int x){
  List<int> LRes=[];
  for(var e in L){
    if(e!=x)
      LRes.add(e);
  }
  return LRes;
}
Set<int> merge_v1(Set<int> S1, Set<int> S2)  {
  return S1.union(S2);
}
Set<int> merge_v2(Set<int> S1, Set<int> S2)  {
  return {...S1,...S2};
}
Set<int> merge_v3(Set<int> S1, Set<int> S2)  {
  Set<int> SRes={};
  SRes.addAll(S1);
  SRes.addAll(S2);
  return SRes;
}

//find a student by id in the studentGroup Map of Maps
//return the student if found and null otherwise
Map<String,dynamic>? findStudent(Map<String,Map<String,dynamic>> stGroup,int id){
  var iterator = stGroup.values.iterator;
  while(iterator.moveNext()){
    var student = iterator.current;
    if(student['id'] == id)
      return student;
  }
  return null;
}

//or using the for
Map<String,dynamic>? findStudent_v2(Map<String,Map<String,dynamic>> stGroup,int id){
  for(var student in stGroup.values){
    if(student['id'] == id)
      return student;
  }
  return null;
}


void main()
{

  int a=12, b=33;
  int res=sum2(x:11,y:3);
  print("sum=$res");
  res=sum2(x:66);
  print("sum=$res");
  res=sum2(y:9);
  print("sum=$res");
  res=sum2();
  print("sum=$res");
  //int res=max2(a, b);
  //print('maximum($a,$b) = $res');
  print('maximum($a,$b) = ${max2(a,b)}');

  //List
  List<double> L1=[];//list of marks
  Set<int> S1={};//CIN values
  Map<String,int> M1={};


  L1.add(1);
  L1.add(12);
  L1.add(5);
  print(L1);
  var z=L1.removeAt(1);//remove the value at the index 1
  print('the deleted value is $z');
  print(L1);
  L1.add(7);
  L1.add(9);
  L1.add(27);
  L1.add(13);
  L1.add(2);
  L1.add(2);
  print(L1);
  L1.remove(9);//remove the value 9 from the list
  print(L1);
  L1.add(20);
  L1.add(30);
  print(L1);
  L1.removeWhere((w)=>w%2==0);// remove all even values
  print(L1);

  L1.removeRange(1, 3); //remove values indexes 1 and 2
  print(L1);
  L1.insert(1, 10); // add the 10 value into the idex 1
  /*print('Enter a float value');
  double x=double.parse(stdin.readLineSync()!);
  if(L1.contains(x))
    print('the float is in the list');
  else
    print('is not in the list');
*/

  //set
  S1.add(1);
  S1.add(2);
  S1.add(16);
  S1.add(1);//ignored because set are with redundance
  //print(S1[i]);//not allowed, Set is unordered collection
  print(S1);


  //Map
  //we can declare using
  Map<String,int> M11={};
  print('The map M11 is empty ? ${M11.isEmpty}');
  M11["Sarra"]=3;
  print('The map M11 is empty ? ${M11.isEmpty}');

  //or
  var M22= Map();
  Map<String,dynamic> student={
    'id':1,
    'name':'Mohamed',
    'level':3,
    'group':'BI-5',
    'guard':15.72
  };

  //print the Map
  print(student);
  //access to a specific value
  print(student['name']);
  print('The level of the student is ${student['level']}');
  //update the value of the guard
  student['guard']=15.7; //access using the key

  //check if a key is on the list of keys
  if(student.containsKey('name'))
    print('the key is in the map');
  if(student.containsKey('latName'))
    print('the key lastName is in the map');
  else
    print('the key is not on the map');
  //show all keys
  print(student.keys);
  //show all values
  print(student.values);

  //add entries to the Map
  print(student);
  student['age']=20;
  print(student);


  //remove an entry
  student.remove('level');
  print(student);

  //print number of items in the Map
  print(student.length);
  //verify if the map is empty
  print("the map is empty : ${student.isEmpty}");
  print(student.length);

  //loop through a Map
  //print only succeeded students
  print('List of succeeded students :');
  for(var key in student.keys)
  {
    if(student["guard"] >=10)
      print('key : $key , value : ${student[key]}');
  }
  //or using forEach loop
  print('List of succeeded students :');
  student.forEach((key, value) {
    if(student["guard"] >=10)
      print('key : $key , value : $value');
  });

  //Complex Data Type example using Maps

  var studentGroup={
    'student1':{'id':1,'name':'Mohamed','level':3,'group':'INF-1','guard':16.72},
    'student2':{'id':2,'name':'Ahmed','level':1,'group':'INF-2','guard':15.05},
    'student3':{'id':3,'name':'Bochra','level':2,'group':'BI-5','guard':17.92},
  };
  //access to the name of the student 1
  print(studentGroup['student1']?['name']);

  //read the id from the keyboard
  print('Enter the id of the student : ');
  int id= int.parse(stdin.readLineSync()!);

  //call the findStudent function
  var st1=findStudent(studentGroup,id);
  if(st1==null)
    print('Student not found');
  else
  {
    print('the student info is :');
    print(st1);
  }

}