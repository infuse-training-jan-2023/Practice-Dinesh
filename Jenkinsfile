pipeline {
     agent {
        label "jenkins-slave-Dinesh"
    }
    stages {
        stage('Build') {
            steps {
                bat 'ruby test.rb'
            }
        }
    }
}