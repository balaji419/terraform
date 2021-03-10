//def buildordestroy
def groovyobj=""
pipeline {
  agent { label 'docker_ansible' }
  environment{
  MSG= "we are build the terraform ec2 and vpc"    
  creds=credentials("print")
  
  }
  parameters { string(name: 'DEPLOY_ENV', defaultValue: 'staging', description: '') }
  stages {
    stage('terraform init') {
      steps {
        sh 'cd ec2_bals_first;terraform init'

        
         script{
      env.BUILDORDESTROY="welcome"
           groovyobj="modified"
      }
        echo "modified value is ${groovyobj}"
      }
     
    }

    stage('terraform planning') {
      steps {
        sh 'cd ec2_bals_first;'
        echo "creds is ${groovyobj}"
        
      }
    }
  stage('terraform decide') {
    steps{
    script {
      
     groovyobj1= load "decide.groovy"
      MSG="welcome123"
     MSG=groovyobj1.buildApp()
      
    }
      echo "value of message in steps is ${MSG}"
  }
    }
      stage('terraform deploy') {
       
      steps {
        sh 'cd ec2_bals_first;#terraform apply'
      }
    }
  }

}
