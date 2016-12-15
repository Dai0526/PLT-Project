int main(){

string Array;
string Array2;
string handle;
string null;
string ans;
string line;

string temp2;
string arraytemp;
string arraytemp2;
string arraytemp3;
int i;
int j;
string arryhandlea;
string arryhandleb;
string diff;

int testa;
string testb;
char testc;
string arry;
string temp;
int len;
file filea;
file fileb;
file filec;


temp=new[1];
handle="32";
null=find("","a");

i=0;
j=0;
#arraytemp=new[4];
arraytemp="abcdefg&hijklmn";
arryhandlea=new[30];
arryhandleb=new[30];
arraytemp3=new[20];

testc=arraytemp[2];
print_c(testc);

#len=length(arraytemp);
#print_i(len);

arry=new[1];

#testa='a';
arry[0]=arraytemp[5];
temp[0]=toupper(arry[0]);
print_s(temp);



arraytemp2=new[20];
arraytemp3="123456";
arraytemp2=arraytemp;
while(i<30){
  if(arraytemp[i]=='&'){
    j=i;
    print_i(j);
  }else{
 
  }
  i=i+1;
}
#print_i(j);
cpy(arryhandlea,arraytemp,j);
#cpy(arryhandleb,)





Array= new[1000000];
filea=open("codegen.ml","r");


while(fget(Array,10000,filea)!=null){
    if(find(Array,handle)!=null){
        print_s(Array);
    }else{
    }
}








#handle="aple";
#Array= new[1000];
#filea=open("test.txt","r");
#fget(Array, 100, filea);
#print_s(Array);

#null=find(Array,"tape");

#if(find(Array,handle)!=null){
#    print_s("null work");
#}else{
#    print_s("not work");
#}


#print_s(ans);









#fget(Array, 100, filea);
#print_s(Array);




#Array = new[1000];
#Array2 = new[1000];
#filea=open("test.txt","r");
#fileb=open("test2.txt","r+");
#filec=open("test3.txt","w+");
#Array2[0]='a';
#Array2[1]='b';

#read(Array,1,125,filea);
#write(Array,1,125,fileb);
#write(Array2,1,125,fileb);

#write(Array2,1,125,filec);

#file=open("test.txt", "r");
#read(Array,125,1,file);
#print_s(Array);

#if(Array=="testfile"){
#    print_s("true");
#}else{
#    print_s("false");
#}

#for(i;i<8;i=i+1){
#    print_c(Array[i]);
#}


#int a;
#int b;

#a=5;
#b=6;

#if(a>=b){print_s("false");}else{ print_s("true");}


#string a;
#int b;


#string a;
#string b;
#a="test.txt";
#b="r";

#string a;
#a=open("test.txt","r");
#print_s(a);

#char a;
#char b;
#string c;

#a = 'x';
#b = toupper(a);
#print_c(b);


#a=tolower('Y');
#print_c(a);
#c = a + b;
#print_s(c);

 return 0;
}
