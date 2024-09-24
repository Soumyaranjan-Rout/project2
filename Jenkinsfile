pipeline{
  agent any
  stages{
    stage('Git repo checkout'){
      steps{
        git url: 'https://github.com/Soumyaranjan-Rout/project2.git'
        echo 'Git checkout'
      }
    }
    stage('maven compile'){
      steps{
        echo 'Compileing code'
        sh 'mvn compile'
      }
    }
    stage('maven clean'){
      steps{
        echo 'Clean target'
        sh 'mvn clean'
      }
    }
    stage('maven package'){
      steps{
        echo 'Package code'
        sh 'mvn package'
      }
    }
    stage('Docker image build'){
      steps{
        echo 'docker iamage build'
        sh 'sudo docker build -t project2 .'
      }
    }
    stage('Docker container create'){
      steps{
        echo 'Container creation'
        sh 'sudo docker run -td -p 8081:8080 --name Project2 project2'
      }
    }
  }
}
