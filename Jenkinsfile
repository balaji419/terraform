//def buildordestroy
def groovyobj
pipeline {
  agent any
  environment{
  MSG= "we are build the terraform ec2 and vpc"    
  creds=credentials("print")
  BUILDORDESTROY=""
  }
  parameters { string(name: 'DEPLOY_ENV', defaultValue: 'staging', description: '') }
  stages {
    stage('terraform init') {
      steps {
        sh 'cd ec2_bals_first;terraform init'
        echo "Message is ${MSG}"
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
     BUILDORDESTROY=groovyobj.testApp()
      echo "output is ${BUILDORDESTROY}"
    }
  }
    }
      stage('terraform deploy') {
       
      steps {
        sh 'cd ec2_bals_first;terraform apply'
      }
    }
  }

}
