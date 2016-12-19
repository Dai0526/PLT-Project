int main(){
    string fa;
    string fb;
    string fc;    
    string temp1;
    string temp2;
    string target; 
    string target2;    
    string total; 
    int eq;
    string newline;
    string grade;
 
    char com;    
    int idx;
    int lenTemp1;
    string uni;
    string uni2;
    int idx2;
    
    int test;

    int lw1;
    int lw2;
    string null;
    null=find("","a");

    fa=open("studentgrade2.csv","r");
    fb=open("studentinfo.csv", "r");
    fc=open("mergedFIle.csv","w");
    temp1=new[1000];
    temp2=new[1000];
        
    fget(temp1,1000,fb);
    fget(temp2,1000,fa);
     
    while(fget(temp1,1000,fb)!=null){
            test=length(temp1);
    print_i(test);

        target=find(temp1,",");
        com=target[0];
        lenTemp1=length(temp1);  
        idx=indexOf(temp1,',');
        
        uni=substring(0, idx-1, temp1);        
       
        while(fget(temp2,1000,fa)!=null){
            grade=find(temp2,uni);            
                target=find(temp2,",");
                idx2=indexOf(temp2,',');
                uni2=substring(0,idx-1,temp2);        
                target=find(target,",");
      
                eq=strEq(uni,uni2);
               
                if(eq==1){  
               
                    newline=mergeString(temp1,target);
                    lw1=length(temp1);
                    lw2=length(target);  
                    write(newline,1,lw1+lw2-2,fc);                        
                #    write(temp1,1,lw1,fc);
                #    write(target,1,lw2,fc);      
                }else{}      
        }  
            fa=open("studentgrade2.csv","r");
    
    }
     

    return 0;
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
            return ans;
        }else{}
        
        idx=idx+1;
    }
    
#    return ans;
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
    while(j<la-2){
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

int strEq(string a, string b){
    int la;
    int lb;
    
    int ans;
    int i;

    ans=1;
    i=0;
    la=length(a);
    lb=length(b);
    if(la==lb){
        while(i<la){
            if(a[i]!=b[i]){
                ans=0;
            }else{}
            i=i+1;
        }    
    }else{ ans=0; }

    return ans;
}
