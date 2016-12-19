int main(){

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
	null=find("","a");

	file_a = open(a, "r");
	file_b = open(b, "r");
	file_c = open(c, "w");

	line_a=fget(temp_a,10000,file_a);
	line_b=fget(temp_b,10000,file_b);
	len_a=length(line_a);
	len_b=length(line_b);

	# write all of file a in file
	while(line_a!=null){
		len_a=length(line_a);
		write(temp_a, 1, len_a, file_c);
		line_a=fget(temp_a,10000,file_a);
	}


	if (same_first_line == 1){
		line_b=fget(temp_b,10000,file_b);
	}
	else {}
	while(line_b!=null){
		len_b=length(line_b);
		write(temp_b, 1, len_b, file_c);
		line_b=fget(temp_b,10000,file_b);
	}
}

