int main(){
    file target;
    string handle;

    handle="_func"; 
    target=open("codegen.ml", "r");
    print_s(target);
    countWord(handle,target);

    return 0;
}


int countWord(string a, file f){
    string temp;
    string null;
    int intcount;
    intcount = 0;

    temp=new[1000000];
    null=find("","a");
     
    while(fget(temp,1000,f)!=null){
        if(find(temp,a)!=null){
            print_s(temp);
            intcount = intcount + 1;
        }else {
           
        }
    }
    print_i(intcount);
    return 1;

}


