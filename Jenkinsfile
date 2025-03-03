pipeline{
    agent any

    //environment{}
    stages{
        stage('checkout') {
            steps{
                git 'https://github.com/ravirajsingh234/DevOps_Learning.git'
            }
        }

        stage('Deploy with rollback') {
            steps{
                sh './deploy.sh --deploy --simulate-failure=true'
            }
        }
    }   
}