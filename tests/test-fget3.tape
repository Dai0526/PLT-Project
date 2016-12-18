int main() 
{
  file filea;
  string array;
  string null;
  int i;

  null = find("","a");

  array = new[10000];

  filea = open("test2.txt", "r");
  while(fget(array,1000,filea) != null){
    print_s(array);
  }

  return 0;
}
