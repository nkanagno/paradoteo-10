#include <iostream>
#include <time.h>
#include <stdlib.h>

using namespace std;

//define functions:
string Random_password();
//main:
int main(){
  string random_password =Random_password();
  cout << "Your random password is:\n";
  cout << random_password<<endl;
  return 0;
}

// Functions:
string Random_password(){
  srand(time(NULL));
  string random_chars = "abcdefghijklmnopqrstuvyxz0123456789!@#$%^&*";
  int pass_len = rand()%10+6;
  int i=0;
  string password="";
  int index;
  
  const int all_chars=44;
  for(i=0;i<pass_len;i++){
    index=rand()%all_chars;
    password=password+random_chars[index];
  }
  return password;
}
