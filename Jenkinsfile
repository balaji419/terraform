pipeline {
  agent any
  stages {
    stage('terraform init') {
      steps {
        sh 'cd ec2_bals_first;terraform init'
      }
    }

    stage('terraform planning') {
      steps {
        sh 'cd ec2_bals_first;terraform plan'
      }
    }

      stage('terraform planning') {
      steps {
        sh 'cd ec2_bals_first;terraform apply'
      }
    }
  }
}
