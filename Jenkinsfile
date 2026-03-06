pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/lakshmiprasanna0369-maker/projects_tes_lakshmi.git'
            }
        }

        stage('Check Files') {
            steps {
                sh 'ls -l'
            }
        }

        stage('Create Artifact') {
            steps {
                sh 'tar -cvf tes-artifact.tar *'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t tes-image .'
            }
        }

        stage('Run Container') {
    steps {
        sh '''
        docker stop $(docker ps -q) || true
        docker rm $(docker ps -aq) || true
        docker run -d -p 3824:80 tes-image
        '''
    }
}

    }
}
