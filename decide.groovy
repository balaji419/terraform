
class Example {
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
