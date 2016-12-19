int main(){
  string handle;
  string newword;

  handle="apple"; 
  newword="cho";
  mergeFiles("demo1/projectgrades/rachel.csv", "demo1/projectgrades/david.csv", "demo1/projectgrades/alltafiles.csv", 1);

  return 0;
}

int mergeFiles(string a, string b, string c, int same_first_line){
	file file_a;
	file file_b;
	file file_c;
	string temp_a;
	string temp_b;
	int len_a;
	int len_b;
	string line_a;
	string line_b;
	string null;

	temp_a=new[10000];
	temp_b=new[10000];
	null=fine("","a");

	file_a = open(a, "r");
	file_b = open(b, "r");
	file_c = open(c, "w");

	line_a=fget(temp_a,10000,file_a);
	line_b=fget(temp_b,10000,file_b);

	len_a=length(line_a);
	len_b=length(line_b);

	# write all of file a in file
	while(line_a!=null){
		write(temp_a, 1, len_a, file_c);
		line_a=fget(temp_a,10000,file_a);
	}


	if (same_first_line == 1){
		line_b=fget(temp_b,10000,file_b);
	}
	else {}
	while(line_b!=null){
		write(temp_b, 1, len_b, file_c);
		line_b=fget(temp_b,10000,file_b);
	}
}

string mergeString(string a, string b){
  string temp;
  int la;
  int lb;
  int l;
  int i;
  int j;

  la=length(a);
  lb=length(b);

  l=la+lb;
  temp=new[l];    
  
  i=0;
  j=0;
  while(j<la){
    temp[j]=a[i];
    i=i+1;
    j=j+1;    
  }
  i=0;
  while(j<l){
    temp[j]=b[i];
    j=j+1;
    i=i+1;
    
  }