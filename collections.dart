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
  print('Enter a float value');
  double x=double.parse(stdin.readLineSync()!);
  if(L1.contains(x))
    print('the float is in the list');
  else
    print('is not in the list');


  //set
  S1.add(1);
  S1.add(2);
  S1.add(16);
  S1.add(1);//ignored because set are with redundance
  //print(S1[i]);//not allowed, List is unordered collection
  print(S1);
}