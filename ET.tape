int main(){

string Array;
string Array2;

string filea;
string fileb;
string filec;
char temp;


int i;
i=0;


Array = new[1000];
Array2 = new[1000];
filea=open("test.txt","r");
fileb=open("test2.txt","r+");
filec=open("test3.txt","w+");
Array2[0]='a';
Array2[1]='b';

read(Array,1,125,filea);
write(Array,1,125,fileb);
write(Array2,1,125,fileb);

write(Array2,1,125,filec);

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
