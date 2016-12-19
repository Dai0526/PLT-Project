int main(){
	
	string x;
	string handle;
	string y;
	string null;

	null = find("","a");

	x = "i love apple and plt";
	handle = "orange";
	y = find(x, handle);
	if(y == null){
		print_s("not found");
	}else{}
	
	return 0;
}
