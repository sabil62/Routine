
//-------------------------COMPATIBLE WITH programmiz.com compiler-----------------onlinegdb fails
//------------------------------------THIS IS REAL DEAL
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

using namespace std;

void timetable(int r){
    srand((unsigned) time(0));
  int randomNumber;
  int Col_stack[6][3]= { { 0 } };
  char groups[9]={'x','a','b','c','d','e','-','-','-'};
  char table_matrix[5][3] ={{0}};
 for(int i=0; i<=5; i++){
  for(int j=0 ; j<=3; j++){

	int randomsssss=(rand() % r) + 1;	//=> (rand() % 10) + 1; 	//this is separte function to take out result between 1-5 for C1-C5,   //0 is null

	Col_stack[i][j]=randomsssss;

	table_matrix[i][j]=groups[randomsssss];
	
  }}
  table_matrix[0][0]='-';
    
  //----------------- COLUMN ARRANGE ============================================
  //---------------------make this 3 for loops
  for(int k=0; k<=3; k++){//for the differnt colums
      for(int l=0; l< 6 ; l++){//for downwards elementss(row elements)
        for(int m = l; m < 6; m++) { // Check the rest of the numbers
	    if(m != l) { // Makes sure don't check number against itself
                if(Col_stack[l][k] == Col_stack[m][k]) {
                    
                    table_matrix[m][k]=groups[8];//group[8] is x
 
                }
        }
      }
	   	}
  }

 cout<<"---------------------------------------------\n"; 
 cout<<"         "<<"9-10  "<<"10-11  "<<"12-1  "<<"1-2     "<<"\n";
 std::string grouping[6] = { "Group 1:", "Group 2:","Group 3:","Group 4:","Group 5:","Group 6:"};
   for(int a=0; a<=5; a++){
       std::cout << grouping[a] << "  ";
      for (int b = 0; b <=3; b++) {
          //std::cout << Col_stack[a][b] << ""<<std::endl;
          cout<<" "<<table_matrix[a][b]<<"    ";
      }
      std::cout << "\n" << std::endl;
  }
  cout<<"---------------------------------------------\n";

}

int main() {
     std::string weekdays[6] = { "Sunday", "Monday","Tuesday","Wednesday","Thursday","Friday"};
     int ran[6]={5,6,4,8,5,7};
     for(int z = 0; z <= 5; z++){
         std::cout << weekdays[z] << "\n ";
         timetable(ran[z]);
     }
  
}