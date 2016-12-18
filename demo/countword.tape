int main(){
    string target;
    string handle;
    int i;

    handle="apple"; 
    target="originalFile.txt";
    i = countWord(handle,target);
    print_s("some");
    print_i(i);

    return 0;
}


int countWord(string a, string f){
    string temp;
    string null;
    file target;
    int intcount; 
    intcount = 0;
     
    target=open(f, "r");
    temp=new[1000000];
    null=find("","a");
     
    while(fget(temp,1000,target)!=null){
       if(find(temp,a)!=null){
            intcount = intcount + 1;
        }else {
           
        }
    }
    print_i(intcount);
    return intcount;

}


