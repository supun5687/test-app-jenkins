pipeline {
  agent any
  tools {
    maven 'MAVEN'
  }
  stages {
    stage("build"){
      steps {
        echo 'building the application.... Dev'
        checkout scmGit(branches: [[name: '*/develop']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-password', url: 'https://github.com/supun5687/test-app-jenkins.git']])
        sh "mvn -Dmaven.test.failure.ignore=true clean package"
        }
      }
    stage("test"){
      steps {
        echo 'testing the application....Dev '
        }
      }
    stage('Docker Build') {
      steps {
        script {
         // Run a shell command to echo Docker version
           sh "docker --version"
             }
         }
      }
    stage("deploy"){
      steps {
        echo 'deploying the application....Dev'
        }
      }
    }
    post{
        always {
            junit(
                allowEmptyResults:true,
                testResults:'*test-reports/.xml'
                )
        }
    }
}
