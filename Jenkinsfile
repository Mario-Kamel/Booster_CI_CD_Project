pipeline {
    agent any

    

    stages {
        stage('Preparation') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/Mario-Kamel/Booster_CI_CD_Project'

            
            }


        }
        stage('Docker Build') {
            steps {
                // Get some code from a GitHub repository
                sh """
                docker build . -f dockerfile -t mariokamel/sprints_jenkins:latest
                """

            
            }


        }
    }
}
