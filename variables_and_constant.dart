F1(a,b){
  return a+b;
}
void main(){
  //declare variables
  int a = 10;
  print(a);
  print("a=$a");
  String x="abc", y="def";
  //int x=123, y=543;
  var result=F1(x,y);
  print("result =$result");
  var a1=5;
  //a1="abcd"; => error because the type of a1 is integer (the type of 5)

  dynamic a2="abc";
  a2=5;

  //nullable variables
  int? a3; //a3 is nullable, its value could be null
  int b1= a3 ?? 15;
  print('b1=$b1');
  a3=20;
  b1= a3 ?? 15;
  print('b1=$b1');

  if(a1>b1)
    print('a1 is greater than b1');
  else
    print('a1 is less than b1');

 //could be written used the ? and the :
 String msg=(a1>b1)?'a1 is greater than b1':'a1 is less than b1';
 print(msg);

 //declare constant
 const pi=3.14;
 //const x2;//error the constant must be initialized
 final int x1;//we don't have to initialize the constant on the declaration
 x1=11;
 //pi=4.15;//error because we can't change constant value
 //x1=12; //error because the final variable can't be changed
}