pipeline {
    agent {
        label "jenkins-slave-dinesh"
    }

    stages {
        stage('Build') {
            steps {
                bat 'ruby test.rb'
            }
        }
    }
}
