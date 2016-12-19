int main(){

	string target;
	string a;
	string b;
	string c;
	target="demo1/projectgrades/alltafiles.csv";
# 	a = mergeFiles("demo1/projectgrades/rachel.csv", "demo1/projectgrades/graham.csv", "demo1/projectgrades/rg.csv", 1);
 #       b = mergeFiles("demo1/projectgrades/alexandra.csv", "demo1/projectgrades/jacob.csv", "demo1/projectgrades/aj.csv", 1);
	c = mergeFiles( "demo1/projectgrades/rg.csv", "demo1/projectgrades/aj.csv", target, 1);
  return 0;
}

string mergeFiles(string a, string b, string c, int same_first_line){
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

	file_a = open(a, "r+");
	file_b = open(b, "r+");
        print_s("before file_c");
	file_c = open(c, "w+");
        print_s("after file_c");

	line_a=fget(temp_a,10000,file_a);
	line_b=fget(temp_b,10000,file_b);
	len_a=length(line_a);
	len_b=length(line_b);
        print_s(line_a);
        print_s(line_b);	
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
	return c;
}

