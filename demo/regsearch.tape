int main(){
    string filename;
    filename="test.txt";
    
    #demo with search between
#    print_s("print all ip:  "); 
#    tape(filename,"/[/-/]/");   

    #demo with search AND
#    print_s("print click event with game subpage: "); 
#    tape(filename,"/cl.gif/&/game/");
     
    #demo with search OR
#    print_s("print either movie page log or manga movie page: ");
#    tape(filename,"/movie/|/manga/");

    #demo with ?
#    print_s("print log whose query has star or starwars: ");
#    tape(filename,"/star/?/wars/");

    #demo with EXCLUSIVEOR movie xor starwar
#    print_s("show logs movie and starwar cannot appear at the same time: ");
#    tape(filename, "/movie/^/starwars/");
    
     #demo with * 
#    print_s("show logs has query wo*w such as ww wow woow wooow:");
#    tape(filename,"/LIT/*/LE/");    
   
    return 0;
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
            searchQ(
f,re);
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

    temp=new[100000];
    head=new[100000];
    tail=new[100000];
    ans=new[100000]; 

    while(fget(temp,100000,f)!=null){
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


int searchKleene(file f, string re){
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


    #to find index for intermediate
    int idx1;
    int idx2;
    int tempidx;
    string tempans;
    int templen;
    int totallen;
    int j;  
    int right;
    int len5;
    char key;
    string null;
    null=find("","a");
    j=0;
    right=1;
    lt=length(re);
    idx=indexOf(re,'*');
    t1=substring(1,idx-3,re);
    t2=substring(idx+2,lt-2,re);
    key=re[idx-2];
        
    
    
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
                end=end+lent2-1;
                ans=substring(0,end,head);                                         
                totallen=length(ans);
                idx1=length(t1);
                templen=length(t2);               
                idx2=totallen-templen;
                tempans=substring(idx1,idx2-1,ans);     
                if(idx1<=idx2){
                    print_s(ans);
                }else{
                    len5=length(tempans);
                    while(j<len5){
                        if(tempans[j]!=key){
                            right=0;
                         }else{}
                        j=j+1;
                    }
                    if(right==1){
                        print_s(ans);
                    }else{}
                }
            }else{}
        }else{}
    
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

