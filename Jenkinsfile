//def buildordestroy
def groovyobj
pipeline {
  agent any
  environment{
  MSG= "we are build the terraform ec2 and vpc"    
  creds=credentials("print")
  
  }
  parameters { string(name: 'DEPLOY_ENV', defaultValue: 'staging', description: '') }
  stages {
    stage('terraform init') {
      steps {
        sh 'cd ec2_bals_first;terraform init'
        echo "Message is ${MSG}"
      }
      script{
      env.BUILDORDESTROY=""
      }
    }

    stage('terraform planning') {
      steps {
        sh 'cd ec2_bals_first;'
        echo "creds is ${creds}"
        
      }
    }
  stage('terraform decide') {
    steps{
    script {
      
     groovyobj= load "decide.groovy"
     env.BUILDORDESTROY=groovyobj.testApp()
      echo "output is ${env.BUILDORDESTROY}"
    }
  }
    }
      stage('terraform deploy') {
       
      steps {
        sh 'cd ec2_bals_first;#terraform apply'
      }
    }
  }

}
