
pipeline {
  agent any
  stages {
    stage('intiating') {
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
