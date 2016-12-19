int main() {
	clearFile("demo/destinationFile.txt");
	return 0;

}

int clearFile(string a) {
	file file_a;
	string temp;
	string null;
	int countlines;
	countlines = numLines(a);
	null=new[1];
	null[0] = '\0';
	file_a=open(a,"w");
	print_s("after open");
        while(countlines > 0) {
		write(null,1,1,file_a);
		countlines = countlines -1;
	}
	return 0;
}

int numLines(string a) {
	file file_a;
	string temp;
	string null;
	int countlines;
	countlines = 0;
	null=find("","a");
	file_a=open(a,"r");
	temp=new[1000000];
	while(fget(temp,10000, file_a)!=null) {
		countlines = countlines + 1; 
	}
	return countlines;
}

