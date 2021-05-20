properties([
    parameters([
        string(name: 'terraformname', defaultValue: 'tfname', description: 'Ttf', ),
	    string(name: 'second', defaultValue: 'tfname', description: 'Ttf', ),
		])
		])
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
