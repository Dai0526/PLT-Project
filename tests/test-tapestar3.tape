int main(){
    string input;
    string handle;

    input = "testtape.txt";
    handle = "/a/*//";
    tape(input,handle);

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

int tape(string fn, string re){
    char key;
    file f;

    string null;
    null=find("","a");
    
    f=open(fn,"r");
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

        if(find(re,"-")!=null){
            searchBetween(f,re);
        }else{}

        if(find(re,"*")!=null){
            searchKleene(f,re);
        }else{}
    }else{
        searchLine(f,re);
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

int searchBetween(file f, string re){
    int idx;
    int lt;
    string t1;
    string t2;    
    string temp;
    

    #to find the intermediate string
    int begin;
    int end;
    string middle;    
    string ans;
    string head;
    string tail;
    int len1;
    int len2;    
    int len;
    int lent2;

    string null;
    null=find("","a");


    lt=length(re);
    idx=indexOf(re,'-');
    t1=substring(1,idx-2,re);
    t2=substring(idx+2,lt-2,re);

    temp=new[1000];
    head=new[1000];
    tail=new[1000];
    ans=new[1000]; 

    while(fget(temp,1000,f)!=null){
        head=find(temp,t1);
        if(head!=null){
            tail=find(temp,t2);
            if(tail!=null){
                len1=length(head);
                len2=length(tail);
                end=len1-len2;
                lent2=length(t2);
                end=end+lent2;
                ans=substring(0,end,head);                                        
                print_s(ans);
            }else{}
        }else{}
    
    }

 
        
    return 1;
}


int  searchKleene(file a, string re){

    int idx;
    int la;
    int lre;
    int len;
    int lft;
    int lsn;
    int l;    
    int right;
    int i;
    int j;
    int ltemp;
    char key;
    string ft;
    string sn;
    
    string temp;
    string word;
    string snmerge;
    string iffind;
    string null;
    
    null=find("","a");



    idx=indexOf(re,'*');
    lre=length(re);    
    ft=substring(1,idx-3, re);
    sn=substring(idx+2, lre-2, re); 
    key=re[idx-2];       
    
   # print_c(key);    
    
    la=length(a);
    lft=length(ft);
    lsn=length(sn);
    #/ab/*/c/
    l=lsn+lft-1;
    
    j=0;    
    i=0;
    right=1;
    temp=new[1000];
    while(fget(temp,1000,a)!=null){
        while(l<=10){
           word=new[1000];
           word=mergeString(word,ft);
 
           while(j<i){
               word=appendChar(word,key);
               j=j+1;  
           }

           word=mergeString(word,sn);
           if(find(temp,word)!=null){
                print_s(word);
           }else{
                word=new[1000];
           }
          
           j=0;
           i=i+1;
           l=l+1;
        }
        i=0;
        l=lsn+lft-1;
        j=0;
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

int searchLine(file f, string a){
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

string str2Upper(string a){
    string temp;
    string tempup;
    string target;
    
    int i;
    string ans;
    char c;
    int l;    
   
    l=length(a);

    target=new[l];
    target=a;
    temp=new[1];
    tempup=new[1];
    i=0;

    ans=new[l];
    while(i<l){
        temp[0]=target[i];
        tempup[0]=toupper(temp[0]);
        ans[i]=tempup[0];
        i=i+1;            
    }
    


    return ans;
}

string str2Lower(string a){
    string temp;
    string tempup;
    string target;
    
    int i;
    string ans;
    char c;
    int l;    
   
    l=length(a);

    target=new[l];
    target=a;
    temp=new[1];
    tempup=new[1];
    i=0;

    ans=new[l];
    while(i<l){
        temp[0]=target[i];
        tempup[0]=tolower(temp[0]);
        ans[i]=tempup[0];
        i=i+1;            
    }
    


    return ans;
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

string appendChar(string s, char a){
    int ls;
    string temp;
    int i;
    i=0;
    ls=length(s);
    temp=new[ls+1];
    
    while(i<ls){
        temp[i]=s[i];
        i=i+1;
    }
    temp[ls]=a;

    return temp;

}