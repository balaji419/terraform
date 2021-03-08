def load()
{
  if (params.action==true){
   proceed=build
      println("we are building"); 
  }
  else{
    proceed=destroy
      println("destroying"); 
  }
    
  return proceed;
}
