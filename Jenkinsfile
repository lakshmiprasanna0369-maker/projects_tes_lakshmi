pipeline {
    agent any

    stages {

        stage('Clone GitHub Repo') {
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

    }
}
