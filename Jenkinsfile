pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/your-repo-url' // Replace with your actual repository URL
            }
        }
        stage('Build') {
            steps {
                sh './build_script.sh' // Replace with your actual build command
            }
        }
        stage('Test') {
            steps {
                sh './tests/detailed_test.sh'// Replace with your actual test command
            }
        }
        stage('Deploy') {
            steps {
                sh './scripts/deploy_script.sh' // Replace with your actual deploy command
            }
        }
    }
}
