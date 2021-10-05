pipeline {
    agent any

    

    stages {
        stage('Preparation') {
            steps {
                
                // Get some code from a GitHub repository
                git 'https://github.com/Mario-Kamel/Booster_CI_CD_Project.git'

               
            }


        }
        stage('Docker Build') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker',usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]){

                    // Get some code from a GitHub repository
                    sh """
                    docker build . -f Dockerfile -t mariokamel/sprints_jenkins:latest
                    docker login -u ${USERNAME} -p ${PASSWORD}
                    docker push mariokamel/sprints_jenkins:latest
                    """

                }
            }  
        }
        
        stage('Deployment') {
            steps {
                
                sh """
                docker run -d -p 3000:3000 mariokamel/sprints_jenkins:latest
                """
            }
        }
        
        
    }
}
