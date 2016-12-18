int main() 
{
  file filea;
  string array;

  array = new[10000];

  filea = open("test.txt", "r");
  read(array, 1,10000,filea);
  print_s(array);

  return 0;
}
