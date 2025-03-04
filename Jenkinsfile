pipeline {

		agent any 
		stages {
			stage('server monitoring'){
				steps{
					sh 'chmod +x monitoring.sh'
					sh './monitoring.sh'
			}
		}
	}
}
