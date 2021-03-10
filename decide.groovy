
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
/*
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
*/
def buildApp() {
println("building the application${params.DEPLOY_ENV}...")
if (params.DEPLOY_ENV=='prod')
{
/*def sout = new StringBuffer(), serr = new StringBuffer()
def scriptDir = getClass().protectionDomain.codeSource.location.path
println(scriptDir)
def proc ='first.sh'.execute()
proc.consumeProcessOutput(sout, serr)
proc.waitForOrKill(1000)
println sout
return "success"*/
	println("prod_deploy")
}
else
{
println("failure")
return "failure"
}
}

return this



