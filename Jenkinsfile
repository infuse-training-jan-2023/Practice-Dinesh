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
    }
}
