int main(){
    
    string target;
    string ans;

    target="i LoVe Plt";
    
    ans=str2Upper(target);    
    print_s(ans);


    ans=str2Lower(target);
    print_s(ans);
    return 0;
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



