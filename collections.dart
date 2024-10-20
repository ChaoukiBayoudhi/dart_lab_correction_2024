int max(int x, int y){
  if(x > y)
    return x;
  return y;
}

//using the arrow
int max2(int x, int y) =>(x > y)?x:y;
void main()
{
  int a=12, b=33;
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
  L1.removeAt(1);//remove the value at the index 1
  print(L1);
  L1.add(7);
  L1.add(9);
  L1.add(2);
  print(L1);
  L1.remove(9);//remove the value 9 from the list
  print(L1);
  L1.add(20);
  L1.add(30);
  print(L1);
  L1.removeWhere((w)=>w%2==0);// remove all pair values
  print(L1);


  //set
  S1.add(1);
  S1.add(2);
  S1.add(16);
  S1.add(1);//ignored because set are with redundance
  //print(S1[i]);//not allowed, List is unordered collection
  print(S1);
}