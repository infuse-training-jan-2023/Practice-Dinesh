pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Test') {
            steps {
                bat "ruby test_new.rb"
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
