int main(){
    file target;
    string handle;

    handle="_func"; 
    target=open("codegen.ml", "r");
    print_s(target);
    searchLine(handle,target);

    return 0;
}


int searchLine(string a, file f){
    string temp;
    string null;
    
    temp=new[1000000];
      
    null=find("","a");
     
    while(fget(temp,1000,f)!=null){
        if(find(temp,a)!=null){
            print_s(temp);
        }else {
           
        }
    }

    return 1;

}
