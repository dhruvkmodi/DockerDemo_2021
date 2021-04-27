pipeline { 
  environment { 
    registry = "dhruvkmodi/dockerdemo_2021" 
    registryCredential = 'dhruvkmodi' 
    image = '' 
  }
  agent any
  tools {
    maven 'Maven 3.6.3'
  }
  stages {
    stage('Build') {
      steps{
        sh 'mvn compile -f RiskMeter/pom.xml'
      } 
    }

    stage('Test') {
      steps {
        sh 'mvn test -f RiskMeter/pom.xml'
      }
    }

    stage('Docker Build') {
      steps {
        script {
          image = docker.build registry
        }
      }
    }

    stage('Deploy') {
      steps {
        script {
          docker.withRegistry('', credentials) {
            image.push()
          }
        }
      }
    }

  }
}
