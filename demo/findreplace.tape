int main(){
    #file original;
    #file destination;
    string handle;
    string newword;

    handle="apple"; 
    newword="orange";
    # original=open("originalFile.txt", "r");
    #destination=open("destinationFile.txt", "w")
    #print_s(destination);
    findreplace(handle,newword, "originalFile.txt", "destinationFile.txt");

    return 0;
}


int findreplace(string a, string b, string orig, string dest){
    string temp;
    string newword;
    string null;
    int la;
    int lb;
    file origfile;
    file destfile;

    #tianhua edited
    int len1;
    int len2;
    string line;


    origfile=open(orig, "r");
    destfile=open(dest, "w");

    la=length(a);
    lb=length(b);
    #newword=new[lb];
    #newword=b;
    temp=new[100000];
    null=find("","a");
	
    if(la==lb){
        while(fget(temp,1000,origfile)!=null){
            if(find(temp,a)!=null){
                print_s("I am in here");
                
            }else {
               
            }
        }
    }
    else {
        line=fget(temp,1000,origfile);
        print_s("I am in the else case");
	while(line!=null){
        len1=length(line);
	    write(temp, 1, len1, destfile);
        line=fget(temp,1000,origfile);
	}
        if (la > lb ){
        }
        else {

        }
    }

    return 1;
}


