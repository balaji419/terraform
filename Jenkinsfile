
pipeline {
  agent any
  stages {
    stage('intiating') {
      steps {
        sh '/bin/terraform init'
      }
    }

    stage('terraform planning') {
      steps {
        sh 'uname -a'
      }
    }

  }
}
