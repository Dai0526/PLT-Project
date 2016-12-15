int main(){
    file original;
    file destination;
    string handle;
    string newword;

    handle="apple"; 
    newword="orange";
    original=open("originalFile.txt", "r");
    destination=open("destinationFile.txt", "w")
    print_s(destination);
    findreplace(handle,newword, original, destination);

    return 0;
}


int findreplace(string old, string new, file orig, file dest){
    string temp;
    string null;

    temp=new[1000000];
    null=find("","a");
     
    while(fget(temp,1000,f)!=null){
        if(find(temp,old)!=null){
            string tempstring;
            tempstring = 
        }else {
           
        }
    }

    return 1;
}


