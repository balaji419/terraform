
/*class Example {
   static def run() {
     String proceed;
   if (params.action==true){
   proceed="build";
      println("we are building"); 
     }
  else{
    proceed="destroy";
      println("destroying"); 
  }
   } 
	
   static void main(String[] args) {
      run();
   } 
}
*/

def buildApp() {
    echo 'building the application...'
} 

def testApp() {
    echo 'testing the application...'
} 

def deployApp() {
    echo 'deplying the application...'
    echo "deploying version ${params.VERSION}"
} 

return this
