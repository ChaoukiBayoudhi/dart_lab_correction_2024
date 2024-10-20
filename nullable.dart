void main()
{
  int x=10;
  print("x=$x");
  int? a;
  int b=a ?? 20;
  print("b=$b");
  a=50;
  b=a ?? 20;
  print("b=$b");

  double z=5.3,y=11.5;
  
  if(y>z)
    print("y is greater than z");
  else
    print("z is greater than y");

  String msg=(y>z) ?"y is greater than z":"z is greater than y";
  print(msg);

}