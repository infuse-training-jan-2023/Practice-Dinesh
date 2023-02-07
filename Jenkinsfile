pipeline {
    agent {
        label "jenkins-slave-dinesh"
    }

    stages {
        stage('Build') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Test') {
            steps {
                bat "ruby test.rb"
            }
        }
        stage('Merge') {
            steps {
                bat "git switch jenkins-ruby"
                bat "git merge jenkins-ruby2"
                bat "git push -u origin jenkins-ruby"
            }
        }
    }
}
