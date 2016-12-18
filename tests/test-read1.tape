int main() 
{
  file filea;
  string array;

  array = new[10000];

  filea = open("test2.txt", "r");
  read(array, 1,125,filea);
  print_s(array);

  return 0;
}
