pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Validate HTML/CSS/JS') {
            steps {
                echo 'Running basic validation...'
                // Optional: Add linters if needed
                // sh 'htmlhint .'
                // sh 'csslint ./'
                // sh 'eslint ./'
            }
        }

        stage('Archive Website') {
            steps {
                echo 'Archiving website files...'
                archiveArtifacts artifacts: '**/*', fingerprint: true
            }
        }

        // OPTIONAL DEPLOY STAGE
        // Uncomment if you want Jenkins to deploy somewhere
        /*
        stage('Deploy') {
            steps {
                echo 'Deploying website...'
                sh '''
                    mkdir -p /var/www/html/calculator
                    cp -r * /var/www/html/calculator
                '''
            }
        }
        */
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
