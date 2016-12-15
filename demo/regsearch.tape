int main(){
    file a;
    int i;
    
    
    a=open("test.txt","r");
    
    print_s("Search exclusive or:"); 
    tape(a,"/test/^/file/");
  
    a=open("test.txt","r");
    print_s("Search and:"); 
    tape(a,"/test/&/file/");

    a=open("test.txt","r");
    print_s("Search or:"); 
    tape(a,"/test/|/file/");

    a=open("test.txt","r");
    print_s("Search condition ?:"); 
    tape(a,"/test/?/file/");
 
    return 0;
}


int tape(file f, string re){
    char key;
    string null;
    null=find("","a");
    

    if(re[0]=='/'){
        if(find(re,"&")!=null){
            searchAnd(f,re);
        }else{}
        
        if(find(re,"|")!=null){
            searchOr(f,re);
        }else{}

        if(find(re,"?")!=null){
            searchQ(f,re);
        }else{}
        
        if(find(re,"^")!=null){
            searchEOR(f,re);
        }else{}
    }else{
        #search(f,re);
    }
  
    return 0;
}

int searchAnd(file f, string re){
    int idx;
    int lt;
    string t1;
    string t2;    
    string temp;
    
    string null;
    null=find("","a");

    lt=length(re);
    idx=indexOf(re,'&');
    t1=substring(1,idx-2,re);
    t2=substring(idx+2,lt-2,re);
    temp=new[1000]; 
    while(fget(temp,1000,f)!=null){
        if(find(temp,t1)!=null){
            if(find(temp,t2)!=null){
                print_s(temp);
            }else{}
        }else{}
    
    }

 
        
    return 1;
}

int searchOr(file f, string re){
    int idx;
    int lt;
    string t1;
    string t2;    
    string temp;
    
    string null;
    null=find("","a");

    lt=length(re);
    idx=indexOf(re,'|');
    t1=substring(1,idx-2,re);
    t2=substring(idx+2,lt-2,re);
    temp=new[1000]; 
    while(fget(temp,1000,f)!=null){
        if(find(temp,t1)!=null){
            print_s(temp);
        }else{
            if(find(temp,t2)!=null){
                print_s(temp);
            }else{}

        }
    
    } 
    return 1;
}

int searchEOR(file f, string re){
    int idx;
    int lt;
    string t1;
    string t2;    
    string temp;
    
    string null;
    null=find("","a");

    lt=length(re);
    idx=indexOf(re,'^');
    t1=substring(1,idx-2,re);
    t2=substring(idx+2,lt-2,re);
    temp=new[1000]; 
    while(fget(temp,1000,f)!=null){
        if(find(temp,t1)!=null){
            if(find(temp,t2)==null){
                print_s(temp);
            }else{}
        }else{
            if(find(temp,t2)!=null){
                print_s(temp);
            }else{}
        
        }
    
    }

 
        
    return 1;
}


int searchQ(file f, string re){
    int idx;
    int lt;
    string t1;
    string t2;    
    string temp;
    int idx2;
    string t3;
    int len1;
    int len2;
    int len3;
    int idx3;
    
    string null;
    null=find("","a");

    lt=length(re);
    idx=indexOf(re,'?');
    t1=substring(1,idx-2,re);
    t2=substring(idx+2,lt-2,re);
    len1=length(t1);
    len2=length(t2);
    len3=len1+len2;
    t3=new[len3];
    idx2=0;
    idx3=0;
    while(idx2<len1){
        t3[idx3]=t1[idx2];
        idx3=idx3+1;
        idx2=idx2+1;
    }

    idx2=0;
     while(idx2<len2){
        t3[idx3]=t2[idx2];
        idx3=idx3+1;
        idx2=idx2+1;
    }

    temp=new[1000];
    
        
 
    while(fget(temp,1000,f)!=null){
        if(find(temp,t1)!=null){
            print_s(temp);
        }else{
            if(find(temp,t2)!=null){
                print_s(temp);
            }else{}

        }
    
    }

  
    return 1;
}


int indexOf(string t, char c){
    int idx;
    int l;
    int ans; 

    l=length(t);
    idx=0;
    
    ans=0;
    while(idx<l){
        if(t[idx]==c){
            ans=idx;
        }else{}
        
        idx=idx+1;
    }
    
    return ans;
}


string substring(int begin, int end, string s){
    string ans;
    string temp;
    int sublength;
    int len; 
    int i;
    sublength=end-begin+1;
    len=length(s);
    
    ans=new[sublength];
    temp=new[len];
    temp=s;
    
    i=0;
    for(begin;begin<end+1;begin=begin+1){
       ans[i]=temp[begin];
       i=i+1;
    }

    return ans;
}

