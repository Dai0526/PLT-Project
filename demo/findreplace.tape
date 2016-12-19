int main(){
  string handle;
  string newword;

  handle="apple"; 
  newword="cho";
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
  string ans_beg;
  string ans;

  int len_line;
  int len_index;
  int len_before_find;
  int len_diff;
  int len_ans;
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
 	write(temp,1,len_line,destfile);
      }
      else {
    	new_index=substring(la, len_index, index);
        ans=mergeString(newword,new_index);
        ans_beg=substring(0, len_before_find-1, temp);
        ans=mergeString(ans_beg, ans);
        len_ans=length(ans);
	
	write(ans,1,len_ans,destfile);
      }
    }else {}
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
