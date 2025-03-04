pipeline {

		agent any 
		stages {
			stage('server monitoring'){
				steps{
					chmod +x monitoring.sh
					sh './monitoring.sh'
			}
		}
	}
}
