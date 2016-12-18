int main() 
{
  file filea;
  string array;

  array = new[10000];

  filea = open("test2.txt", "r");
  fget(array,10000,filea);
  print_s(array);

  return 0;
}
