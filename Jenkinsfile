pipeline {
    agent {
        docker { image 'my-apache-image' }
    }
    stages {
        stage('Checkout') {
            steps {
                // Clone the repository from the develop branch
                checkout scm
            }
        }
        stage('Build') {
            when {
                branch 'develop'
            }
            steps {
                // Execute your build process, this could be a script or a command
                sh './build-script.sh'
                // The build artifacts would be inside the Docker container in this context.
                // If you need to store them elsewhere, you'd handle that here.
            }
        }
        // Additional stages such as 'Test' could be added here to run automated tests
    }
    post {
        success {
            // Actions to perform if the build was successful.
            echo 'Build completed successfully.'
        }
        failure {
            // Actions to perform if the build failed.
            echo 'Build failed.'
        }
    }
}
