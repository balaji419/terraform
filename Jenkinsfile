pipeline {
  agent any
  stages {
    stage('terraform init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('terraform planning') {
      steps {
        sh 'terraform plan'
      }
    }

  }
}