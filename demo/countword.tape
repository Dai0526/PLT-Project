int main(){
    string target;
    string handle;

    handle="apple"; 
    target="demo/originalFile.txt";
    countWord(handle,target);

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
            print_s(temp);
            intcount = intcount + 1;
        }else {
           
        }
    }
    print_s("total number of apples eaten: ");
    print_i(intcount);
    return 1;

}


