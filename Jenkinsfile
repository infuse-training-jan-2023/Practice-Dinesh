pipeline {
    agent {
        label "jenkins-slave-dinesh"
    }

    stages {
        stage('Test') {
            steps {
                bat "git clone https://github.com/infuse-training-jan-2023/Practice-Dinesh/"
                bat "cd PRACTICE-DINESH"
                bat "git switch jenkins-ruby1"
                bat "ruby test_new.rb"
            }
        }
         stage('Merge') {
            steps {
                bat "git switch jenkins-ruby"
                bat "git status"
                bat "git merge -X theirs jenkins-ruby1"
                bat "git push -u origin jenkins-ruby"
            }
        }
    }
}