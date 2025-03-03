pipeline{
    agent any

    //environment{}
    stages{
        // stage('checkout') {
        //     steps{
        //         git 'https://github.com/ravirajsingh234/DevOps_Learning.git'
        //     }
        // }

        stage('Deploy with rollback') {
            steps{
                chmod +x deploy.sh
                sh './deploy.sh --deploy --simulate-failure=true'
            }
        }
    }   
}