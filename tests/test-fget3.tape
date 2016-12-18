int main() 
{
  file filea;
  string array;

  array = new[10000];

  filea = open("test2.txt", "r");
  fget(array,10000,filea);
  fget(array,10000,filea);
  fget(array,10000,filea);
  fget(array,10000,filea);

  if(length(array) == 0){
  	print_s("nothing in array");
  }

  return 0;
}
