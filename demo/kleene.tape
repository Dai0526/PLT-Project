int main(){
    string a;
    string b;
    string c;
    string d;
    string fn;
    file f;

   
    f=open("test.txt","r");
    
    kleene(f,"/go/*/gle/");   


    return 1;
}

int kleene(file a, string re){

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
