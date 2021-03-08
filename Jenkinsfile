pipeline {
  agent any
  environment{
  MSG= "we are build the terraform ec2 and vpc"
  
   parameters { string(name: 'DEPLOY_ENV', defaultValue: 'staging', description: '') }

    
  creds=credentials("print")
  }
  stages {
    stage('terraform init') {
      steps {
        sh 'cd ec2_bals_first;terraform init'
        echo "Message is ${MSG}"
      }
    }

    stage('terraform planning') {
      steps {
        sh 'cd ec2_bals_first;terraform plan'
        echo "creds is ${creds}"
        
      }
    }

      stage('terraform deploy') {
      steps {
        sh 'cd ec2_bals_first;terraform apply'
      }
    }
  }
}
