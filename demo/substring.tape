int main(){
    string subtarget;
    string target;

    target="I love plt project!";
    subtarget=substring(2,5,target);
    print_s(subtarget);
    return 0;
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

