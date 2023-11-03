pipeline {
    agent {
        docker { image 'my-apache-image' }
    }
    stages {
        stage('Checkout') {
            steps {
                sh 'git clone https://github.com/hshar/website.git'
            }
        }
        stage('Build and Publish') {
            when {
                branch 'master'
            }
            steps {
                // Your build commands go here
                sh 'cp -R . /var/www/html'
                // Code to publish to Apache on port 82
                // This could involve copying files to a directory that Apache serves
            }
        }
    }
}
