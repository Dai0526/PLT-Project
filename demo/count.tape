int main(){
    file target;
    string handle;

    handle="apple"; 
    target=open("originalFile.txt", "r");
    print_s(target);
    count(handle,target);

    return 0;
}


int count(string a, file f){
    string temp;
    string null;
    int mycount;
    
    temp=new[1000000];

    null=find("","a");
     
    while(fget(temp,1000,f)!=null){
        if(find(temp,a)!=null){
            mycount = mycount + 1;
        }else {
           
        }
    }

    return mycount;

}


