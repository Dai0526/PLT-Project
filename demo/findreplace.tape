int main(){
    string handle;
    string newword;

    handle="apple"; 
    newword="age";
    findreplace(handle,newword, "demo/originalFile.txt", "demo/destinationFile.txt");

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
    string index;
    string new_index;

    int len_line;
    int len_index;
    int len_before_find;
    int len_diff;
    string line;
    int index_temp;
    string line_before_find;


    origfile=open(orig, "r");
    destfile=open(dest, "w");

    la=length(a);
    lb=length(b);
    newword=new[lb];
    newword=b;
    temp=new[100000];
    null=find("","a");
 
    line=fget(temp,1000,origfile);
    while(line!=null){
	len_line=length(line);
        index=find(temp,a);
        if(index!=null){
            len_index=length(index);
            len_before_find=len_line-len_index;
            if(la==lb){
                index_temp=0;
                while(index_temp < lb) {
                    temp[len_before_find] = newword[index_temp];
                    index_temp=index_temp+1;
                    len_before_find=len_before_find+1;
                }
            }
            else {
		if(la > lb){
                    index_temp=0;
                    #shift to lefti
		    len_diff = la-lb;
                    print_i(len_diff);
                    new_index=new[len_index-len_diff];
                    print_s(index);
                    len_index = len_index -1;
                    while(len_diff < len_index) {
                        if(index_temp < lb) {
			    new_index[index_temp] = newword[index_temp];
			} 
                        else {
	                    new_index[index_temp] = index[len_diff];
                        }
			len_diff = len_diff + 1;
                        index_temp = index_temp + 1;	        	
		    }
                    index_temp=0;
                    len_before_find=len_line-len_index;
		    len_line=len_line-len_diff;
		    while(index_temp < len_line) {
		        
                        temp[len_before_find] = new_index[index_temp];
                        index_temp=index_temp+1;
                        len_before_find=len_before_find+1;
                    }
                    print_s(new_index);
                } else {}
            }
        }else {}
            print_s(temp);
            write(temp,1,len_line,destfile);
            line=fget(temp, 1000, origfile); #get next line
    }

    return 1;
}


string mergeString(string a, string b){
    string temp;
    int la;
    int lb;
    int l;
    int i;
    int j;

    la=length(a);
    lb=length(b);

    l=la+lb;
    temp=new[l];    
    
    i=0;
    j=0;
    while(j<la){
        temp[j]=a[i];
        i=i+1;
        j=j+1;    
    }
    i=0;
    while(j<l){
        temp[j]=b[i];
        j=j+1;
        i=i+1;
        
    }

    return temp;
}
