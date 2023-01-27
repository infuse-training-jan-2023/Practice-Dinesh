pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'javac Dup_Char.java'
            }
        }
        stage('Run') {
            steps {
                bat 'java Dup_Char'
            }
        }
    }
}